<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/15/2017

DESCRIPTION:
Cleans up old IIS Logs beyond 2 weeks

USAGE:
.\Clean-OldIISLogs.ps1

REQUIREMENTS:
Remote Administrative Rights to the IIS Server
#>

$IISLogDir = (Get-WebConfigurationProperty '/system.applicationHost/sites/siteDefaults' -Name 'logfile').directory

Get-ChildItem -Path $IISLogDir -Recurse -File | Where-Object CreationTime -lt  (Get-Date).AddDays(-14)  | Remove-Item -Force