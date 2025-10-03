[Setup]
AppName=Bluetify
AppVersion=1.0
DefaultDirName={pf}\Bluetify
DefaultGroupName=Bluetify
OutputBaseFilename=BluetifySetup
Compression=lzma
SolidCompression=yes

[Files]
Source: "bluetify-win64\bin\Release\net9.0-windows\win-x64\BluetifyApp.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "bluetify-win64\bin\Release\net9.0-windows\win-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Bluetify"; Filename: "{app}\BluetifyApp.exe"
Name: "{group}\Uninstall Bluetify"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\BluetifyApp.exe"; Description: "Launch Bluetify"; Flags: nowait postinstall skipifsilent
