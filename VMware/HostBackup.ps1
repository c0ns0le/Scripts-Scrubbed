<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 2/24/2015
Modified - 12/7/2016
Modified - 2/27/2017
Modified - 8/1/2017

DESCRIPTION:
Backs up VMware ESXi Host Config Bundles to specified location

USAGE:
.\HostBackup.ps1 -VMHosts <Host1,Host2> -User <Username> -Pass <Password> -Dest <Location to save File>

REQUIREMENTS:
 - VMware PowerCLI
#>
param (
	[String[]] $VMHosts,
	[Parameter(Mandatory=$true)][string]$User,
	[Parameter(Mandatory=$true)][string]$Pass,
	[Parameter(Mandatory=$true)][string]$Dest
)

Import-Module VMware.PowerCLI

foreach($VMHost in $VMHosts)
{
Connect-VIServer -Server $VMHost -Protocol https -User $User -Password $Pass
Get-VMHostFirmware -VMHost $VMHost -BackupConfiguration -DestinationPath $Dest
}