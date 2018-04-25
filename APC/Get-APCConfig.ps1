<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 2/16/2018

DESCRIPTION:
Downloads Config file from APC specified

USAGE:
.\Get-APCConfig.ps1 -APCS '<APC IP's/NAME's>' -Username 'APC Username' -Password 'APC Password' -BackupDir 'Directory to store INI Files'

REQUIREMENTS:
FTP Enabled on the APC
#>

param (
    [Parameter(Mandatory = $true)]$APCS,
    [Parameter(Mandatory = $true)]$Username,
    [Parameter(Mandatory = $true)]$Password,
    [Parameter(Mandatory = $true)]$BackupDir
)

$PWDir = Get-Location

Set-Location C:\temp

$DownloadConfig = @"
$Username
$Password
get config.ini
bye
"@

$DownloadConfig | out-file FTPCommand.txt

foreach ($APC in $APCS) {
    ftp -s:FTPCommand.txt $APC
    Rename-Item config.ini "$APC.ini"
    Move-Item "$APC.ini" -Destination $BackupDir
}

Remove-Item FTPCommand.txt

Set-Location $PWDir