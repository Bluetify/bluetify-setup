[Setup]
AppName=Bluetify
AppVersion=1.0
DefaultDirName={pf}\Bluetify
DefaultGroupName=Bluetify
OutputBaseFilename=BluetifySetup
Compression=lzma
SolidCompression=yes

[Files]
Source: "win-x64\Bluetify.exe"; DestDir: "{app}"; Flags: ignoreversion

Source: "win-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Bluetify"; Filename: "{app}\Bluetify.exe"
Name: "{group}\Uninstall Bluetify"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\Bluetify.exe"; Description: "Launch Bluetify"; Flags: nowait postinstall skipifsilent