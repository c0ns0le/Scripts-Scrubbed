<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/5/2018

DESCRIPTION:
Checks specified domain for "allsettingsdisabled" GPO's

USAGE:
.\Get-DisabledGPO.ps1 -DomainName 'DomainName'

REQUIREMENTS:
 - AD Powershell Cmdlets
#>

param (
    [Parameter(Mandatory = $true)]$DomainName
)

Get-GPO -Domain $DomainName -all | Where-Object gpostatus -match 'AllSettingsDisabled'