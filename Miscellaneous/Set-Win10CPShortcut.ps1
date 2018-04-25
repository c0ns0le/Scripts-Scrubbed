<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2018

DESCRIPTION:
Replaces "Settings" Link when right clicking on the Start Menu with a "Control Panel" Link for the Current User

USAGE:
.\Set-Win10CPShortcut.ps1

REQUIREMENTS:
 - N/A
#>

Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\WinX\Group2\4 - Control Panel.lnk" -Force
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:LOCALAPPDATA\Microsoft\Windows\WinX\Group2\4 - Control Panel.lnk")
$Shortcut.TargetPath = "$env:windir\system32\control.exe"
$Shortcut.Save()