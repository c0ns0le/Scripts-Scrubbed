<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2017

DESCRIPTION:
Resets Local PC Password witha Domain Controller

USAGE:
.\ResetPCPassword.ps1 -DC DC1.Domain.com

REQUIREMENTS:
 - AD Powershell Cmdlets
 - Account Operator AD Rights
#>
param (
	[Parameter(Mandatory=$true)][string]$DC
)

Reset-ComputerMachinePassword -Server $DC -Credential $Credential