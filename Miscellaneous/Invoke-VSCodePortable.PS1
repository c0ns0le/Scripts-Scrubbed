<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/29/2018

DESCRIPTION:
Launches Visual Studio Code Portable with the specified Settings and Extensions Directories

USAGE:
.\Invoke-VSCodePortable.PS1

REQUIREMENTS:
N/A
#>

.\VSCode\Code.exe --extensionHomePath "I:\My Drive\PowerShell\_VSCodeExtensions" --user-data-dir "I:\My Drive\PowerShell\_VSCodeSettings"