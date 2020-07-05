Created to run a silent installation for multiple programs.
Run 'run.bat' as an admin to initiate

'run.bat' calls 'GWScript.ps1' with an Administrator Powershell

'GWScript.ps1' should silently install
<br>
MSI: MS Edge, Firefox, Chrome	
<br>
EXE: Notepad++, Dialpad, Teamviewer, Office 365, Acrobat DC	

Then it should remove selected (most of) built in Microsoft applications.

File Structures:
	<br>GWScript.ps1, run.bat in root
	<br>create a new folder called "installers" with previously mentioned installers

Need Fixing: 
	<br>Acrobat Distribution Installer does not install silently
	<br>Office 365 not yet scripted

July 04 2020
	<br>CXP2535
