#A Script to initiate silent installations on selected programs and removes all MS built in Apps(except store)
$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
 
Write-Host "Current script directory is $ScriptDir"
Set-Location $ScriptDir
cd installers

#Install MSI Files (Edge, Chrome, Firefox)
$msi = @('.\Edge.msi', '.\Chrome.msi', '.\Firefox.msi')

foreach($_ in $msi){
    Start-Process msiexec -ArgumentList /i, $_ , /quiet, /norestart, ACCEPT_EULA=1  -Wait 
	write-host "$_"
 }

 #Install EXE files (npp, dialpad, teamviewer)
 $exe = @('.\npp.exe',  '.\TeamViewer.exe', '.\dialpad.exe', '.\acrobat.exe')
 foreach($X in $exe){
     Start-Process $X /S -NoNewWindow -Wait 
     write-host("$X")
 }
#  Start-Process C:\Scripts\acrobat.exe /S -NoNewWindow -Wait -PassThru
#  Start-Process C:\Scripts\TeamViewer.exe /S -NoNewWindow -Wait -PassThru
# Start-Process C:\Scripts\npp.exe /S -NoNewWindow -Wait -PassThru
# Start-Process C:\Scripts\dialpad.exe /S -NoNewWindow -Wait -PassThru


# #Deletes Microsoft Built-in Apps
# $ProvisionedAppPackageNames  =@(
#     "Microsoft.BingWeather"
#     "Microsoft.DesktopAppInstaller"
#     "Microsoft.GetHelp"
#     "Microsoft.Getstarted"
#     "Microsoft.HEIFImageExtension"
#     "Microsoft.Messaging"
#     "Microsoft.Microsoft3DViewer"
#     "Microsoft.MicrosoftOfficeHub"
#     "Microsoft.MicrosoftSolitaireCollection"
#     "Microsoft.MicrosoftStickyNotes"
#     "Microsoft.MixedReality.Portal"
#     "Microsoft.MSPaint"
#     "Microsoft.Office.OneNote"
#     "Microsoft.OneConnect"
#     "Microsoft.People"
#     "Microsoft.Print3D"
#     "Microsoft.ScreenSketch"
#     "Microsoft.SkypeApp"
#     # Microsoft.StorePurchaseApp
#     "Microsoft.VP9VideoExtensions"
#     "Microsoft.Wallet"
#     "Microsoft.WebMediaExtensions"
#     "Microsoft.WebpImageExtension"
#     "Microsoft.Windows.Photos"
#     "Microsoft.WindowsAlarms"
#     "Microsoft.WindowsCalculator"
#     "Microsoft.WindowsCamera"
#     "microsoft.windowscommunicationsapps"
#     "Microsoft.WindowsFeedbackHub"
#     "Microsoft.WindowsMaps"
#     "Microsoft.WindowsSoundRecorder"
#     # Microsoft.WindowsStore
#     "Microsoft.Xbox.TCUI"
#     "Microsoft.XboxApp"
#     "Microsoft.XboxGameOverlay"
#     "Microsoft.XboxGamingOverlay"
#     "Microsoft.XboxIdentityProvider"
#     "Microsoft.XboxSpeechToTextOverlay"
#     "Microsoft.YourPhone"
#     "Microsoft.ZuneMusic"
#     "Microsoft.ZuneVideo"
# )

# foreach ($ProvisionedAppName in $ProvisionedAppPackageNames) {
#     Get-AppxPackage -Name $ProvisionedAppName -AllUsers | Remove-AppxPackage
#     Get-AppXProvisionedPackage -Online | Where-Object DisplayName -EQ $ProvisionedAppName | Remove-AppxProvisionedPackage -Online
# }