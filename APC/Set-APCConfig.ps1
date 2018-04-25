<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 2/21/2018

DESCRIPTION:


USAGE:
.\Set-APCConfig.ps1 -APCS '<APC IP's/NAME's>' -Username 'APC Username' -Password 'APC Password' -SettingsFile 'Path to INI/CSF File'

REQUIREMENTS:
FTP Enabled on the APC
#>

param (
    [Parameter(Mandatory = $true)]$APCS,
    [Parameter(Mandatory = $true)]$Username,
    [Parameter(Mandatory = $true)]$Password,
    [Parameter(Mandatory = $true)]$SettingsFile
)

$PWDir = Get-Location

Set-Location C:\temp

$UploadConfig = @"
$Username
$Password
put $SettingsFile
bye
"@

$UploadConfig | out-file FTPCommand.txt

foreach ($APC in $APCS) {
    ftp -s:FTPCommand.txt $APC
}

Remove-Item FTPCommand.txt

Set-Location $PWDir