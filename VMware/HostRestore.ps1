<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 8/1/2017

DESCRIPTION:
Restores Specified VMHost Configuration

USAGE:
.\HostRestore.ps1 -VMHost <Host> -User <Username> -Pass <Password> -SourceFile <Location of Backed up Config Bundle>

REQUIREMENTS:
 - VMware PowerCLI
#>
param (
	[Parameter(Mandatory=$true)][string]$VMHost,
	[Parameter(Mandatory=$true)][string]$User,
	[Parameter(Mandatory=$true)][string]$Pass,
	[Parameter(Mandatory=$true)][string]$SourceFile
)

Import-Module VMware.PowerCLI

Connect-VIServer -Server $VMHost -Protocol https -User $User -Password $Pass
Set-VMHostFirmware -VMHost $VMHost -Restore -Force -SourcePath $SourceFile