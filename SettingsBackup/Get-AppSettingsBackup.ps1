<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/29/2018

DESCRIPTION:
Control Script for Backup of Settings and Extensions via the following Scripts
 - Invoke-VSCodeBackup.ps1
 - Invoke-ChromeBookmarkBackup.ps1
 - Invoke-ScriptBackup.ps1

USAGE:
.\Get-AppSettingsBackup.ps1 -BackupDir 'Directory'

REQUIREMENTS:
 - Invoke-VSCodeBackup.ps1
 - Invoke-ChromeBookmarkBackup.ps1
 - Invoke-ScriptBackup.ps1
#>


param (
    [Parameter(Mandatory = $true)]$BackupDir
)

$CurrentDate = get-date -format M.d.yyyy
$CurrentPCName = (Get-ComputerInfo).CsName

# Run Sub-Scripts
.\Invoke-VSCodeBackup.ps1 -BackupDir $BackupDir
.\Invoke-ChromeBookmarkBackup.ps1 -BackupDir $BackupDir
.\Invoke-ScriptBackup.ps1 -BackupDir $BackupDir

# Zip Backup
Compress-Archive -Path $BackupDir\* -CompressionLevel Optimal -DestinationPath $BackupDir\Backup-$CurrentPCName-$CurrentDate.zip

# Cleanup
$Cleanup = Get-ChildItem -Path  $BackupDir | Where-Object { $_.PSIsContainer }
ForEach ($Clean in $Cleanup) {
    $Clean.FullName | Remove-Item -Force -Recurse
}