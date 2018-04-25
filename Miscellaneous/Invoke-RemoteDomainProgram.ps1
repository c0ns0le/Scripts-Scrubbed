<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2018

DESCRIPTION:
Launches a Program as a User in another Domain

USAGE:
.\Invoke-RemoteDomainProgram.ps1 -RemoteDomain <Domain Name> -RemoteUser <Remote Username> -Command <Command to Execute as this user>

REQUIREMENTS:
 - Account must exist on Remote Domain
 - Remote Domain must be accessible
 - Depending on the Program, this Script will need to be run as Administrator
#>

param (
    [Parameter(Mandatory = $true)]$RemoteDomain,
    [Parameter(Mandatory = $true)]$RemoteUser,
    [Parameter(Mandatory = $true)]$Command
)

runas /netonly /user:$RemoteDomain\$RemoteUser $Command