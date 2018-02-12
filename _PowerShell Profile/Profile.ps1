<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/1/2017

DESCRIPTION:
Sets PowerShell Module Path to point to a Shared Module Repository

USAGE:
N/A - Called by Default when launching PowerShell

REQUIREMENTS:
This File needs to be saved as Profile.ps1 at "C:\Windows\System32\WindowsPowerShell\v1.0"

Verify it is being used by running:
Get-Module -ListAvailable
#>

$env:PSModulePath = $env:PSModulePath + ";<Module Path>"