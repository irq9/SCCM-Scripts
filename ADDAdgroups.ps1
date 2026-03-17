# Import SCCM Modul und setzen der Umgebungsvariablen
Import-Module C:\path\to\ConfigurationManager.psd1
Set-Location "SCCM:"

# Variablen (Rahmenbedingungen anpassen)
$SiteCode = "YourSiteCode" # z. B. "ABC"
$TargetADContainer = "LDAP://OU=Groups,DC=domain,DC=local" # AD-Container der Gruppen
$ADGroups = @(
    "CN=GroupName1,OU=Groups,DC=domain,DC=local",
    "CN=GroupName2,OU=Groups,DC=domain,DC=local"
) # Liste der AD-Gruppen
$CollectionFolder = "AD User Collections" # Zielordner für die Sammlungen

# Schritt 1: Active Directory Group Discovery: AD Container prüfen und ggf. hinzufügen
$ADDiscovery = Get-CMActiveDirectoryForest | Where-Object {$_.Name -eq "YourDomain.local"} # AD Forest ersetzen
if (-not $ADDiscovery) {
    Write-Host "Active Directory Forest wurde nicht gefunden. Stelle sicher, dass der richtige Forest konfiguriert ist!" -ForegroundColor Red
    exit
}

$ExistingDiscoveryPath = Get-CMDiscoveryMethod -Name "Active Directory Group Discovery" | Select-Object -ExpandProperty Properties | Where-Object {
    $_.PropertyName -like "*Path*" -and $_.Value -eq $TargetADContainer
}
if (-not $ExistingDiscoveryPath) {
    Write-Host "Füge AD-Container $TargetADContainer zur AD Group Discovery hinzu..."
    Set-CMDiscoveryMethod -Name "Active Directory Group Discovery" -AddPath $TargetADContainer
} else {
    Write-Host "AD-Container $TargetADContainer ist bereits konfiguriert."
}

# Schritt 2: Die Gruppen dem Discovery hinzufügen, falls noch nicht vorhanden
foreach ($ADGroup in $ADGroups) {
    $GroupName = $ADGroup -replace '^CN=([^,]+).*$','$1'
    $ExistingGroupDiscovery = Get-CMActiveDirectoryGroupDiscoveryGroup | Where-Object { $_.DistinguishedName -eq $ADGroup }

    if (-not $ExistingGroupDiscovery) {
        Write-Host "Füge AD-Gruppe $GroupName zur AD Group Discovery hinzu..."
        New-CMActiveDirectoryGroupDiscoveryGroup -DistinguishedName $ADGroup
    } else {
        Write-Host "AD-Gruppe $GroupName ist bereits in der Discovery vorhanden."
    }
}

# Schritt 3: User Collections für die Gruppen erstellen
Write-Host "Füge Sammlungen in SCCM basierend auf Gruppen hinzu..."
$ExistingFolders = Get-CMUserCollectionFolder | Where-Object { $_.Name -eq $CollectionFolder }
if (-not $ExistingFolders) {
    Write-Host "Erstelle Ordner: $CollectionFolder"
    New-CMUserCollectionFolder -Name $CollectionFolder
}

foreach ($ADGroup in $ADGroups) {
    $GroupName = $ADGroup -replace '^CN=([^,]+).*$','$1'

    # Überprüfen, ob die Sammlung bereits existiert
    $ExistingCollection = Get-CMUserCollection | Where-Object { $_.Name -eq "AD - $GroupName" }
    if ($ExistingCollection) {
        Write-Host "Sammlung $GroupName existiert bereits, überspringe..."
        continue
    }

    # Erstelle eine neue Sammlung
    $Collection = New-CMUserCollection -Name "AD - $GroupName" `
        -LimitingCollectionName "All Users and User Groups" `
        -CollectionFolderPath $CollectionFolder -Comment "Sammlung für $GroupName aus AD-Gruppe."

    # Baue die Query
    $Query = @"
select SMS_R_User.ResourceID, SMS_R_User.ResourceType, SMS_R_User.Name, SMS_R_User.UniqueUserName, SMS_R_User.WindowsNTDomain 
from SMS_R_User 
where SMS_R_User.UserGroupName = "$ADGroup"
"@

    # Query hinzufügen
    Add-CMUserCollectionQueryMembershipRule -CollectionId $Collection.CollectionID -RuleName "Query for $GroupName" -QueryExpression $Query

    Write-Host "Sammlung für $GroupName wurde erfolgreich erstellt."
}

Write-Host "Alle Gruppen wurden erfolgreich verarbeitet."