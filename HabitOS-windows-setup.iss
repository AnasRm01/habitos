; HabitOS — Windows Installer Script
; 
; HOW TO COMPILE THIS INTO A .EXE:
; 1. Download Inno Setup FREE from: https://jrsoftware.org/isdl.php
; 2. Install it (takes 2 minutes)
; 3. Put HabitOS.html and this .iss file in the SAME folder
; 4. Right-click this file → "Compile"
; 5. You get Install-HabitOS.exe in an "Output" folder — done!

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
UninstallDisplayIcon={sys}\shell32.dll,13

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; The entire app is just this one HTML file
Source: "HabitOS.html"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Desktop shortcut
Name: "{userdesktop}\HabitOS"; \
  Filename: "{app}\HabitOS.html"; \
  IconFilename: "{sys}\shell32.dll"; \
  IconIndex: 13; \
  Comment: "HabitOS - Daily Habit Tracker"

; Start Menu shortcut  
Name: "{userprograms}\HabitOS"; \
  Filename: "{app}\HabitOS.html"; \
  IconFilename: "{sys}\shell32.dll"; \
  IconIndex: 13; \
  Comment: "HabitOS - Daily Habit Tracker"

[Run]
; Open the app right after install finishes
Filename: "{app}\HabitOS.html"; \
  Description: "Launch HabitOS now"; \
  Flags: nowait postinstall skipifsilent shellexec
