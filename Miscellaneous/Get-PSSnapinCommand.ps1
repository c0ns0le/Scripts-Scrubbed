<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 1/26/2018

DESCRIPTION:
Gets list of commands available in a specified PowerShell Snapin

USAGE:
.\Get-PSSnapinCommand.ps1 -SnapinName <Snapin>

REQUIREMENTS:
N/A
#>

param (
    [Parameter(Mandatory = $true)]$SnapinName
)

Add-PSSnapin $SnapinName
Get-Command | Where-Object {$_.PSSnapin.Name -eq $SnapinName}