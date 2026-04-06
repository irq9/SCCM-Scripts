# PSAppDeployToolkit – Alle Variablen

Referenz aller integrierten Variablen des [PSAppDeployToolkit (PSADT)](https://github.com/psappdeploytoolkit/psappdeploytoolkit).

> **Quelle:** `AppDeployToolkitMain.ps1` (v3.x) sowie offizielle Dokumentation unter https://psappdeploytoolkit.com/docs/reference/variables

---

## 1. Toolkit-Metadaten

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$appDeployToolkitName` | `string` | Interner Kurzname des Toolkits | `PSAppDeployToolkit` |
| `$appDeployMainScriptFriendlyName` | `string` | Lesbarer Name des Hauptskripts | `App Deploy Toolkit Main` |
| `$appDeployMainScriptVersion` | `version` | Versionsnummer des Hauptskripts | `3.9.3` |
| `$appDeployMainScriptMinimumConfigVersion` | `version` | Mindestversion der Konfigurationsdatei | `3.9.3` |
| `$appDeployMainScriptDate` | `string` | Versionsdatum des Skripts | `05/03/2023` |
| `$appDeployMainScriptParameters` | `hashtable` | Alle an das Skript übergebenen Parameter | *(hashtable)* |

---

## 2. Anwendungsmetadaten (in `Deploy-Application.ps1` zu setzen)

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$appVendor` | `string` | Hersteller der Anwendung | `Microsoft` |
| `$appName` | `string` | Name der Anwendung | `Office 365` |
| `$appVersion` | `string` | Versionsnummer der Anwendung | `16.0.0` |
| `$appArch` | `string` | Architektur der Anwendung | `x64` |
| `$appLang` | `string` | Sprache der Anwendung | `DE` |
| `$appRevision` | `string` | Revisionsnummer | `01` |
| `$appScriptVersion` | `version` | Version des Deploy-Skripts | `1.0.0` |
| `$appScriptDate` | `string` | Datum des Deploy-Skripts | `01/01/2024` |
| `$appScriptAuthor` | `string` | Autor des Deploy-Skripts | `IT-Abteilung` |
| `$installName` | `string` | Vollständiger Installationsname (wird automatisch zusammengesetzt) | `Microsoft Office 365 16.0.0` |
| `$installTitle` | `string` | Anzeigename in Benutzeroberflächen (wird automatisch zusammengesetzt) | `Microsoft Office 365 16.0.0` |

---

## 3. Deployment-Steuerungsvariablen

| Variable | Typ | Beschreibung | Mögliche Werte |
|---|---|---|---|
| `$deploymentType` | `string` | Art der Bereitstellung | `Install`, `Uninstall`, `Repair` |
| `$deployMode` | `string` | Modus der Bereitstellung | `Interactive`, `Silent`, `NonInteractive` |
| `$deployModeNonInteractive` | `boolean` | `$true`, wenn kein Dialog angezeigt werden soll | `$true` / `$false` |
| `$deployModeSilent` | `boolean` | `$true` bei vollständig silenter Bereitstellung | `$true` / `$false` |
| `$installPhase` | `string` | Aktuelle Phase der Installation | `Initialization`, `Pre-Installation`, `Installation`, `Post-Installation`, `De-Installation`, … |

---

## 4. Datum und Kultur

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$currentDateTime` | `datetime` | Datum und Uhrzeit beim Start des Toolkits | `06/04/2024 10:30:00` |
| `$currentTime` | `string` | Aktuelle Uhrzeit (formatiert) | `10:30:00` |
| `$currentDate` | `string` | Aktuelles Datum (formatiert) | `06-04-2024` |
| `$currentTimeZoneBias` | `timespan` | UTC-Offset der aktuellen Zeitzone | `02:00:00` |
| `$culture` | `CultureInfo` | Aktuelles Kulturobjekt | *(CultureInfo-Objekt)* |
| `$currentLanguage` | `string` | Sprache des aktuellen Prozesses (ISO 639-1) | `DE` |
| `$currentUILanguage` | `string` | UI-Sprache des angemeldeten Benutzers | `DE` |

---

## 5. Umgebungsvariablen (Pfade)

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$envAllUsersProfile` | `string` | Pfad des gemeinsamen Profils | `C:\ProgramData` |
| `$envAppData` | `string` | Roaming AppData des aktuellen Benutzers | `C:\Users\Max\AppData\Roaming` |
| `$envArchitecture` | `string` | Prozessorarchitektur | `AMD64` |
| `$envCommonDesktop` | `string` | Gemeinsamer Desktop (alle Benutzer) | `C:\Users\Public\Desktop` |
| `$envCommonDocuments` | `string` | Gemeinsame Dokumente | `C:\Users\Public\Documents` |
| `$envCommonProgramFiles` | `string` | Gemeinsame Programmdateien | `C:\Program Files\Common Files` |
| `$envCommonProgramFilesX86` | `string` | Gemeinsame Programmdateien (x86) | `C:\Program Files (x86)\Common Files` |
| `$envCommonStartMenu` | `string` | Startmenü für alle Benutzer | `C:\ProgramData\Microsoft\Windows\Start Menu` |
| `$envCommonStartMenuPrograms` | `string` | Programme-Ordner im Startmenü (alle Benutzer) | `C:\ProgramData\Microsoft\Windows\Start Menu\Programs` |
| `$envCommonStartUp` | `string` | Autostart-Ordner für alle Benutzer | `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup` |
| `$envCommonTemplates` | `string` | Vorlagenordner für alle Benutzer | `C:\ProgramData\Microsoft\Windows\Templates` |
| `$envComputerName` | `string` | NetBIOS-Computername | `WORKSTATION01` |
| `$envComputerNameFQDN` | `string` | Vollständiger Domänenname des Computers | `workstation01.contoso.com` |
| `$envHomeDrive` | `string` | Laufwerksbuchstabe des Benutzerprofils | `C:` |
| `$envHomePath` | `string` | Pfad des Benutzerprofils | `\Users\Max` |
| `$envHomeShare` | `string` | Netzwerkpfad des Benutzerprofils | `\\server\homes\Max` |
| `$envLocalAppData` | `string` | Lokale AppData des aktuellen Benutzers | `C:\Users\Max\AppData\Local` |
| `$envLogicalDrives` | `string[]` | Liste aller logischen Laufwerke | `C:\`, `D:\` |
| `$envProgramData` | `string` | ProgramData-Pfad | `C:\ProgramData` |
| `$envProgramFiles` | `string` | Programme-Pfad (64-Bit) | `C:\Program Files` |
| `$envProgramFilesX86` | `string` | Programme-Pfad (32-Bit) | `C:\Program Files (x86)` |
| `$envPublic` | `string` | Öffentlicher Benutzerordner | `C:\Users\Public` |
| `$envSystemDrive` | `string` | Systemlaufwerk | `C:` |
| `$envSystemRoot` | `string` | Windows-Stammverzeichnis | `C:\Windows` |
| `$envTemp` | `string` | Temporärer Ordner des aktuellen Benutzers | `C:\Users\Max\AppData\Local\Temp` |
| `$envUserCookies` | `string` | Cookies-Ordner | `C:\Users\Max\AppData\Roaming\Microsoft\Windows\Cookies` |
| `$envUserDesktop` | `string` | Desktop des aktuellen Benutzers | `C:\Users\Max\Desktop` |
| `$envUserFavorites` | `string` | Favoriten des aktuellen Benutzers | `C:\Users\Max\Favorites` |
| `$envUserInternetCache` | `string` | Internet-Cache des Benutzers | `C:\Users\Max\AppData\Local\Microsoft\Windows\INetCache` |
| `$envUserInternetHistory` | `string` | Internetsurfhistorie | `C:\Users\Max\AppData\Local\Microsoft\Windows\History` |
| `$envUserMyDocuments` | `string` | Dokumente-Ordner des Benutzers | `C:\Users\Max\Documents` |
| `$envUserName` | `string` | Anmeldename des aktuellen Benutzers | `Max` |
| `$envUserPictures` | `string` | Bilder-Ordner des Benutzers | `C:\Users\Max\Pictures` |
| `$envUserProfile` | `string` | Profilpfad des aktuellen Benutzers | `C:\Users\Max` |
| `$envUserSendTo` | `string` | SendTo-Ordner des Benutzers | `C:\Users\Max\AppData\Roaming\Microsoft\Windows\SendTo` |
| `$envUserStartMenu` | `string` | Startmenü des aktuellen Benutzers | `C:\Users\Max\AppData\Roaming\Microsoft\Windows\Start Menu` |
| `$envUserStartMenuPrograms` | `string` | Programme im Startmenü des Benutzers | `C:\Users\Max\AppData\Roaming\Microsoft\Windows\Start Menu\Programs` |
| `$envUserStartUp` | `string` | Autostart-Ordner des Benutzers | `C:\Users\Max\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` |
| `$envUserTemplates` | `string` | Vorlagenordner des Benutzers | `C:\Users\Max\AppData\Roaming\Microsoft\Windows\Templates` |
| `$envSystem32Directory` | `string` | System32-Verzeichnis | `C:\Windows\System32` |
| `$envWinDir` | `string` | Windows-Verzeichnis | `C:\Windows` |

---

## 6. Domäne und Netzwerk

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$IsMachinePartOfDomain` | `boolean` | Gibt an, ob der Computer Mitglied einer Domäne ist | `$true` |
| `$envMachineWorkgroup` | `string` | Arbeitsgruppenname (bei Nicht-Domänen-Mitglieder) | `WORKGROUP` |
| `$envMachineADDomain` | `string` | AD-Domänenname | `contoso.com` |
| `$envLogonServer` | `string` | FQDN des Anmeldeservers/DC | `dc01.contoso.com` |
| `$MachineDomainController` | `string` | Name des aktuellen Domänencontrollers | `DC01` |
| `$envMachineDNSDomain` | `string` | DNS-Domäne des Computers | `contoso.com` |
| `$envUserDNSDomain` | `string` | DNS-Domäne des angemeldeten Benutzers | `contoso.com` |
| `$envUserDomain` | `string` | NetBIOS-Domäne des Benutzers | `CONTOSO` |

---

## 7. Betriebssystem

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$envOS` | `psobject` | WMI-Objekt `Win32_OperatingSystem` | *(WMI-Objekt)* |
| `$envOSName` | `string` | Vollständiger OS-Name | `Windows 11 Pro` |
| `$envOSServicePack` | `string` | Service Pack des Betriebssystems | *(meist leer bei Win 10/11)* |
| `$envOSVersion` | `version` | OS-Versionsnummer | `10.0.22621` |
| `$envOSVersionMajor` | `string` | Hauptversionsnummer | `10` |
| `$envOSVersionMinor` | `string` | Nebenversionsnummer | `0` |
| `$envOSVersionBuild` | `string` | Build-Nummer | `22621` |
| `$envOSVersionRevision` | `string` | Revisions-/UBR-Nummer | `2715` |
| `$envOSProductType` | `int32` | Produkttyp als Zahl | `1` |
| `$envOSProductTypeName` | `string` | Lesbarer Produkttyp | `Workstation` |
| `$envOSArchitecture` | `string` | OS-Architektur | `64-bit` |
| `$IsServerOS` | `boolean` | `$true`, wenn Server-OS | `$false` |
| `$IsDomainControllerOS` | `boolean` | `$true`, wenn Domänencontroller | `$false` |
| `$IsWorkStationOS` | `boolean` | `$true`, wenn Workstation-OS | `$true` |

---

## 8. PowerShell- und CLR-Versionen

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$envPSVersionTable` | `hashtable` | Vollständige `$PSVersionTable` | *(hashtable)* |
| `$envPSVersion` | `string` | PowerShell-Versionsnummer | `5.1.22621.2506` |
| `$envPSVersionMajor` | `string` | PS-Hauptversion | `5` |
| `$envPSVersionMinor` | `string` | PS-Nebenversion | `1` |
| `$envPSVersionBuild` | `string` | PS-Build | `22621` |
| `$envPSVersionRevision` | `string` | PS-Revision | `2506` |
| `$envCLRVersion` | `string` | CLR-/.NET-Versionsnummer | `4.0.30319.42000` |
| `$envCLRVersionMajor` | `string` | CLR-Hauptversion | `4` |
| `$envCLRVersionMinor` | `string` | CLR-Nebenversion | `0` |
| `$envCLRVersionBuild` | `string` | CLR-Build | `30319` |
| `$envCLRVersionRevision` | `string` | CLR-Revision | `42000` |

---

## 9. Prozessarchitektur

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$Is64Bit` | `boolean` | `$true`, wenn das Betriebssystem 64-Bit ist | `$true` |
| `$Is64BitProcess` | `boolean` | `$true`, wenn der aktuelle PowerShell-Prozess 64-Bit ist | `$true` |
| `$psArchitecture` | `string` | Architektur des aktuellen PS-Prozesses | `x64` |

---

## 10. Berechtigungen und Konten

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$CurrentProcessToken` | `WindowsIdentity` | Windows-Identität des aktuellen Prozesses | *(Objekt)* |
| `$CurrentProcessSID` | `SecurityIdentifier` | SID des aktuellen Prozesses | *(SID-Objekt)* |
| `$ProcessNTAccount` | `string` | NT-Konto des aktuellen Prozesses | `CONTOSO\Max` |
| `$ProcessNTAccountSID` | `string` | SID-Wert als Zeichenkette | `S-1-5-21-…` |
| `$IsAdmin` | `boolean` | `$true`, wenn der Prozess mit Administratorrechten läuft | `$true` |
| `$IsLocalSystemAccount` | `boolean` | `$true`, wenn unter SYSTEM ausgeführt | `$true` |
| `$IsLocalServiceAccount` | `boolean` | `$true`, wenn unter Local Service ausgeführt | `$false` |
| `$IsNetworkServiceAccount` | `boolean` | `$true`, wenn unter Network Service ausgeführt | `$false` |
| `$IsServiceAccount` | `boolean` | `$true`, wenn unter einem beliebigen Dienstkonto ausgeführt | `$true` |
| `$IsProcessUserInteractive` | `boolean` | `$true`, wenn der Prozess im interaktiven Kontext läuft | `$false` |
| `$LocalSystemNTAccount` | `string` | NT-Kontoname des SYSTEM-Kontos | `NT AUTHORITY\SYSTEM` |
| `$SessionZero` | `boolean` | `$true`, wenn in Session 0 ausgeführt | `$true` |
| `$RunAsActiveUser` | `psobject` | Objekt des aktiven Benutzers (bei Session-0-Ausführung) | *(Objekt oder `$null`)* |

---

## 11. Skriptpfade

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$scriptPath` | `string` | Vollständiger Pfad zum Hauptskript | `C:\Deploy\AppDeployToolkit\AppDeployToolkitMain.ps1` |
| `$scriptName` | `string` | Dateiname ohne Erweiterung | `AppDeployToolkitMain` |
| `$scriptFileName` | `string` | Dateiname mit Erweiterung | `AppDeployToolkitMain.ps1` |
| `$scriptRoot` | `string` | Verzeichnis des Skripts | `C:\Deploy\AppDeployToolkit` |
| `$invokingScript` | `string` | Pfad des aufrufenden Skripts | `C:\Deploy\Deploy-Application.ps1` |
| `$scriptParentPath` | `string` | Übergeordnetes Verzeichnis (Toolkit-Stammverzeichnis) | `C:\Deploy` |

---

## 12. Toolkit-Verzeichnisse und Dateipfade

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$dirFiles` | `string` | Unterordner `Files` des Deployment-Pakets | `C:\Deploy\Files` |
| `$dirSupportFiles` | `string` | Unterordner `SupportFiles` des Deployment-Pakets | `C:\Deploy\SupportFiles` |
| `$dirAppDeployTemp` | `string` | Toolkit-eigener temporärer Ordner | `C:\Windows\Temp\PSAppDeployToolkit` |
| `$appDeployLogoIcon` | `string` | Pfad zum Toolkit-Logo (Icon) | `C:\Deploy\AppDeployToolkit\AppDeployToolkitLogo.ico` |
| `$appDeployLogoBanner` | `string` | Pfad zum Toolkit-Banner (PNG) | `C:\Deploy\AppDeployToolkit\AppDeployToolkitBanner.png` |
| `$appDeployConfigFile` | `string` | Pfad zur Toolkit-Konfigurationsdatei | `C:\Deploy\AppDeployToolkit\AppDeployToolkitConfig.xml` |
| `$appDeployCustomTypesSourceCode` | `string` | Pfad zur C#-Quelldatei für Custom Types | `C:\Deploy\AppDeployToolkit\AppDeployToolkitMain.cs` |

---

## 13. Log-Variablen

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$logName` | `string` | Name der Log-Datei | `Microsoft_Office_365_16.0.0_EN_01_Install_en.log` |
| `$logTempFolder` | `string` | Temporärer Log-Ordner (bei komprimierten Logs) | `C:\Windows\Temp\PSAppDeployToolkit_Logs` |
| `$DisableLogging` | `boolean` | `$true` deaktiviert das Logging | `$false` |

---

## 14. Toolkit-Konfigurationsoptionen (aus `AppDeployToolkitConfig.xml`)

| Variable | Typ | Beschreibung |
|---|---|---|
| `$configToolkitRequireAdmin` | `boolean` | Erfordert Administratorrechte |
| `$configToolkitTempPath` | `string` | Pfad für temporäre Toolkit-Dateien |
| `$configToolkitRegPath` | `string` | Registrierungspfad des Toolkits |
| `$configToolkitLogDir` | `string` | Zielordner für Log-Dateien |
| `$configToolkitCompressLogs` | `boolean` | Log-Dateien komprimieren |
| `$configToolkitLogStyle` | `string` | Log-Format: `CMTrace` oder `Legacy` |
| `$configToolkitLogMaxSize` | `double` | Maximale Log-Dateigröße (MB) |
| `$configToolkitLogWriteToHost` | `boolean` | Ausgabe in Konsole schreiben |
| `$configToolkitLogDebugMessage` | `boolean` | Debug-Meldungen protokollieren |

---

## 15. MSI-Konfigurationsoptionen

| Variable | Typ | Beschreibung | Beispielwert |
|---|---|---|---|
| `$configMSILoggingOptions` | `string` | MSI-Logging-Optionen | `/log` |
| `$configMSIInstallParams` | `string` | Standardparameter für MSI-Installation | `/i` |
| `$configMSISilentParams` | `string` | Stille MSI-Parameter | `/qn /norestart` |
| `$configMSIUninstallParams` | `string` | Standardparameter für MSI-Deinstallation | `/x` |
| `$configMSILogDir` | `string` | MSI-Log-Verzeichnis | `C:\Windows\Logs\Software` |
| `$configMSIMutexWaitTime` | `int32` | Wartezeit auf MSI-Mutex (Sekunden) | `3600` |

---

## 16. Ausführbare Dateien

| Variable | Typ | Beschreibung | Wert |
|---|---|---|---|
| `$exeWusa` | `string` | Windows Update Standalone Installer | `wusa.exe` |
| `$exeMsiexec` | `string` | MSI-Installer | `msiexec.exe` |
| `$exeSchTasks` | `string` | Aufgabenplanung | `C:\Windows\System32\schtasks.exe` |

---

## 17. Registrierungsschlüssel

| Variable | Typ | Beschreibung |
|---|---|---|
| `$regKeyApplications` | `string[]` | Pfade zu installierten Anwendungen in der Registrierung (native + WOW64) |
| `$regKeyLotusNotes` | `string` | Registrierungspfad für Lotus Notes |
| `$regKeyAppExecution` | `string` | Registrierungspfad für Image File Execution Options |

---

## 18. Zustandsvariablen

| Variable | Typ | Beschreibung |
|---|---|---|
| `$msiRebootDetected` | `boolean` | `$true`, wenn ein MSI-Prozess einen Neustart angefordert hat |
| `$BlockExecution` | `boolean` | `$true`, wenn Ausführungsblockierung aktiv ist |
| `$installationStarted` | `boolean` | `$true`, sobald die Installation gestartet wurde |
| `$runningTaskSequence` | `boolean` | `$true`, wenn im Kontext einer SCCM/Intune Task Sequence |

---

## 19. PSADT 4.x – Session-Objekt (`$adtSession`)

Ab **Version 4.x** werden Anwendungsmetadaten und Deployment-Parameter in einem Session-Hashtable gekapselt:

```powershell
$adtSession = @{
    # Anwendungsmetadaten
    AppVendor      = 'Microsoft'
    AppName        = 'Office 365'
    AppVersion     = '16.0.0'
    AppArch        = 'x64'
    AppLang        = 'DE'
    AppRevision    = '01'

    # Deployment-Einstellungen
    DeploymentType = 'Install'   # Install | Uninstall | Repair
    DeployMode     = 'Interactive' # Interactive | Silent | NonInteractive

    # Logging
    InstallName    = ''   # Wird automatisch befüllt
    InstallTitle   = ''   # Wird automatisch befüllt
}
```

Die Variablen sind dann über `$adtSession.AppName`, `$adtSession.AppVersion` usw. erreichbar.

---

## Weiterführende Links

- [Offizielle Variablen-Dokumentation (PSADT)](https://psappdeploytoolkit.com/docs/reference/variables)
- [GitHub-Repository PSAppDeployToolkit](https://github.com/psappdeploytoolkit/psappdeploytoolkit)
- [AppDeployToolkitMain.ps1 (Quellcode)](https://github.com/PSAppDeployToolkit/PSAppDeployToolkit)
- [PSADT Cheatsheet (Community)](https://raymondzaagsma.github.io/psadt_cheatsheet/)
