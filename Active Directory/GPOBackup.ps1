<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2017

DESCRIPTION:
Backs up all GPO's and saves them to the specified Folder

USAGE:
.\GPOBackup.ps1 -SveLoc C:\GPOExport\

REQUIREMENTS:
 - grouppolicy Powershell Cmdlets
#>

param (
    [Parameter(Mandatory=$true)][string]$SveLoc,
	[string]$date = $( get-date -format M.d.yyyy )
)


Import-Module grouppolicy
New-Item -Path $SveLoc$date -ItemType directory
Backup-Gpo -All -Path $SveLoc$date