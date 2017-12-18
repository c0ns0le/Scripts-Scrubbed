<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 8/3/2017
Modified - 12/8/2017

DESCRIPTION:
Reports which Domain Controllers are enabled for Scavenging

USAGE:
.\Get-DNSScavenging.ps1

REQUIREMENTS:
Active Directory PowerShell Module
#>

$ADDCs = Get-ADDomainController -Filter *
$ADDCs = $ADDCs.name

$SCAV=foreach($ADDC in $ADDCs)
{
Get-DnsServerScavenging -ComputerName $ADDC
}

Write-Output $SCAV | Format-Table