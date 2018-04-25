<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/29/2018

DESCRIPTION:
Backs up Scripts from specified Directories

USAGE:
.\Invoke-ScriptBackup.ps1 -BackupDir 'Directory'

REQUIREMENTS:
Code Folder living at c:\Users\USERNAME\Code
#>


param (
    [Parameter(Mandatory = $true)]$BackupDir
)

$UserName = $env:UserName

# Create Scripts Directory
New-Item -ItemType Directory $BackupDir\Scripts\

# Enumerate Script Folders
$ScriptDirs = Get-ChildItem C:\Users\$UserName\Code

# Backup
ForEach ($ScriptDir in $ScriptDirs) {
    Copy-Item -Container $ScriptDir.FullName -Recurse -Destination $BackupDir\Scripts\
}