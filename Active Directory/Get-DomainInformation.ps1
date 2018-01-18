<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/18/2017

DESCRIPTION:
Gets Information about current Domain/Forest

USAGE:
.\Get-DomainInformation.ps1

REQUIREMENTS:
 - AD Powershell Cmdlets
#>

$LogonDC = $env:LOGONSERVER
$LogonDC = $env:LOGONSERVER -replace '\\', ''

$DomainInfo = Get-ADDomain | Select-Object InfrastructureMaster, RIDMaster, PDCEmulator
$ForestInfo = Get-ADForest | Select-Object DomainNamingMaster, SchemaMaster

$AgeZones = Get-DnsServerZone -ComputerName $LogonDC

$AgeReport = foreach ($AgeZone in $AgeZones) {
    Get-DnsServerZoneAging -ComputerName $LogonDC -Name $AgeZone.ZoneName -EA SilentlyContinue
}

$DomainInfo
$ForestInfo
$AgeReport | Format-Table