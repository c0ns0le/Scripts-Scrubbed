<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2017

DESCRIPTION:
Sets Computer Object Description in AD in a standard fashion

USAGE:
.\Set-ADComputerDescription.ps1 -ADComp <Computer Name> -ADCDescType <"Asset Tag" or VM> -ADCDescTechOwn <IT "Owner"> -ADCDescOrgOwn <Organizational "Owner"> -ADCDescRolesApp <Roles or Applications of the Server>

    Exapmple:
        .\Set-ADComputerDescription.ps1 -ADComp PC1  -ADCDescType VM -ADCDescITOwn 'NAME' -ADCDescOrgOwn 'NAME' -ADCDescRolesApp 'ROLE Name' -Location "Physical or Logical Location"

REQUIREMENTS:
Active Directory PowerShell Module
#>

param (
	[Parameter(Mandatory=$true)][string]$ADComp,
	[Parameter(Mandatory=$true)][string]$ADCDescType,
    [Parameter(Mandatory=$true)][string]$ADCDescITOwn,
    [Parameter(Mandatory=$true)][string]$ADCDescOrgOwn,
    [Parameter(Mandatory=$true)][string]$ADCDescRolesApp,
    [Parameter(Mandatory=$true)][string]$Location
)

Set-ADComputer -Identity $ADComp -Description "$ADCDescType | $ADCDescITOwn | $ADCDescOrgOwn | $ADCDescRolesApp" -Location $Location