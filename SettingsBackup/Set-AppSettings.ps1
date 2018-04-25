<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/29/2018

DESCRIPTION:


USAGE:
.\Set-AppSettings.ps1 -Archive 'Path to Archive' -TempDir 'Temp Directory for Expanded Archive'

REQUIREMENTS:
Backed up Archive from Get-AppSettingsBackup.ps1
#>

param (
    [Parameter(Mandatory = $true)]$Archive,
    [Parameter(Mandatory = $true)]$TempDir
)

# Decompress Backup File
Expand-Archive -Path $Archive -DestinationPath $TempDir

# Chrome Bookmarks and Favicon Restore

# VSCode Settings and Extensions Restore

# Code Folder Restore
