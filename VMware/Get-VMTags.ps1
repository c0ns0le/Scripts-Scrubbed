<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/6/2017

DESCRIPTION:
Gets Tags for VM's on a particular vCenter Server

USAGE:
.\Get-VMTags.ps1 -vCenterServer <Servername>

REQUIREMENTS:
PowerCLI PowerShell Module
#>

param (
	[Parameter(Mandatory=$true)]$vCenterServer
)

Import-Module VMware.PowerCLI

Connect-VIServer -Server $vCenterServer

$VMList=Get-VM
Get-VM $VMList | Select Name,@{N="Tags";E={((Get-TagAssignment -Entity $_ | select -ExpandProperty Tag).Name -join ",")}}