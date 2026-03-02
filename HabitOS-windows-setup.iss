; HabitOS — Windows Installer Script

[Setup]
AppName=HabitOS
AppVersion=1.0
AppPublisher=HabitOS
AppComments=Daily Habit Tracker — Turn your life into a game
DefaultDirName={localappdata}\HabitOS
DefaultGroupName=HabitOS
DisableProgramGroupPage=yes
OutputBaseFilename=Install-HabitOS
OutputDir=Output
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=lowest
UninstallDisplayName=HabitOS
SetupIconFile=habitos.ico
UninstallDisplayIcon={app}\habitos.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "HabitOS.html"; DestDir: "{app}"; Flags: ignoreversion
Source: "habitos.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{userdesktop}\HabitOS"; \
  Filename: "{app}\HabitOS.html"; \
  IconFilename: "{app}\habitos.ico"; \
  Comment: "HabitOS - Daily Habit Tracker"

Name: "{userprograms}\HabitOS"; \
  Filename: "{app}\HabitOS.html"; \
  IconFilename: "{app}\habitos.ico"; \
  Comment: "HabitOS - Daily Habit Tracker"

[Run]
Filename: "{app}\HabitOS.html"; \
  Description: "Launch HabitOS now"; \
  Flags: nowait postinstall skipifsilent shellexec
