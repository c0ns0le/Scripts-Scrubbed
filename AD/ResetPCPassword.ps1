<#
Resets Local PC Password witha Domain Controller
Examples:
.\ResetPCPassword.ps1 -DC DC1.Domain.com
#>
param (
	[Parameter(Mandatory=$true)][string]$DC
)

Reset-ComputerMachinePassword -Server $DC -Credential $Credential