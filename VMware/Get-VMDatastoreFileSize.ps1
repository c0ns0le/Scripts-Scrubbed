<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/6/2017

DESCRIPTION:
Gets File size of Datastore Files

USAGE:
.\Get-VMDatastoreFileSize.ps1 -DSName <Datasore Friendly Name>

REQUIREMENTS:
PowerCLI PowerShell Module
#>

param (
    [Parameter(Mandatory=$true)]$DSName
)


$Datastore = Get-Datastore -Name $DSName
New-PSDrive -Location $Datastore -Name ds -PSProvider VimDatastore -Root "\"
Set-Location ds:
Get-ChildItem -Path \ -Recurse | Select-Object -Property Name,Length