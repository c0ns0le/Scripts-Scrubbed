<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/23/2018

DESCRIPTION:
Runs a Program as a Managed Service Account

USAGE:
.\Invoke-AsMSA.ps1 -DomainName 'Domain' -MSM 'AccountName' -PSExecPath 'Path to PSExec Executable' -Program 'Path to EXE'

REQUIREMENTS:
 - psexec in location accessible to the Script
 - Managed Service Account must already be installed on the Machine
#>

param (
    [Parameter(Mandatory = $true)][string]$MSM,
    [Parameter(Mandatory = $true)][string]$DomainName,
    [Parameter(Mandatory = $true)][string]$PSExecPath,
    [Parameter(Mandatory = $true)][string]$Program
)

Start-Process -FilePath $PSExecPath -ArgumentList "-i -u $DomainName\$MSM -p ~ $Program"