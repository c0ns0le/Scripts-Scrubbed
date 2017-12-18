<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/5/2017

DESCRIPTION:
Collects Windows Feature Information, and shows only Installed Features

USAGE:
.\Get-EnabledFeatures.ps1 -PCNAME <Server Name>

REQUIREMENTS:
RSAT or Server OS
#>

param (
	[Parameter(Mandatory=$true)]$PCNAME
)

import-module servermanager
Get-WindowsFeature

Get-WindowsFeature -ComputerName $PCNAME | Where-Object {$_.Installed -match "True"} | Select-Object -Property Name