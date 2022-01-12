; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SEYRDesktop"
#define MyAppVersion "1.2"
#define MyAppPublisher "bradmartin333"
#define MyAppURL "https://github.com/bradmartin333/SEYR"
#define MyAppExeName "SEYRDesktop.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{57D9130C-887E-4384-8179-0DD084311AD7}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Repos\SEYR\Setup
OutputBaseFilename=SEYRDesktopSetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.dll.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.Imaging.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.Imaging.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.Math.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.Math.Core.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.Math.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.Math.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.Statistics.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.Statistics.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\Accord.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\MathNet.Numerics.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\MathNet.Numerics.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\SEYR.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\SEYR.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\SEYR.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\SEYRDesktop.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\SEYRDesktop.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Repos\SEYR\SEYRproject\SEYRDesktop\bin\Release\System.Drawing.Common.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

