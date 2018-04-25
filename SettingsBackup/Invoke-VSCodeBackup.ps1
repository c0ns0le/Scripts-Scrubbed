<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/29/2018

DESCRIPTION:
Backs up VSCode Settings and Extensions from Default Locations for the User running the Script

USAGE:
.\Invoke-VSCodeBackup.ps1 -BackupDir 'Directory'

REQUIREMENTS:
N/A
#>


param (
    [Parameter(Mandatory = $true)]$BackupDir
)

$UserName = $env:UserName

# Get File Paths
$SourceCodeSettingsFile = 'C:\users\' + $UserName + '\AppData\Roaming\Code\User\settings.json'
$SourceCodeExtensionsDir = 'C:\users\' + $UserName + '\.vscode\extensions'

# Create VSCode Directory
New-Item -ItemType Directory $BackupDir\VSCode\

# Copy Files to Backup Directory
Copy-Item -Path $SourceCodeSettingsFile -Destination $BackupDir\VSCode\
Copy-Item -Container $SourceCodeExtensionsDir -Recurse -Destination $BackupDir\VSCode\