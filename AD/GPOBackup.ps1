<#
Backs up all GPO's and saves them to the specified Folder
Examples
.\GPOBackup.ps1 -SveLoc C:\GPOExport\
#>

param (
    [Parameter(Mandatory=$true)][string]$SveLoc,
	[string]$date = $( get-date -format M.d.yyyy )
)


Import-Module grouppolicy
New-Item -Path $SveLoc$date -ItemType directory
Backup-Gpo -All -Path $SveLoc$date