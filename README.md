run 'run.bat' as an admin to initiate

run.bat calls GWScript.ps1 with an Administrator Powershell

GWScript.ps1 should silently install 
MSI: MS Edge, Firefox, Chrome
EXE: Notepad++, Dialpad, Teamviewer, Office 365, Acrobat DC

File Structures:
GWScript.ps1, run.bat in root
create a new folder called "installers" with previously mentioned installers

Need Fixing: 
Acrobat Distribution Installer does not install silently
Office 365 not yet scripted

July 04 2020
CXP2535
