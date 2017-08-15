<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/24/2017

DESCRIPTION:
Hashes all Child Objects in the specified Folder

USAGE:
.\GetFileHash.ps1 -Folder "C:\Reports" -CSV "C:\ReportsHash.csv"

REQUIREMENTS:
N/A
#>

param (
	[Parameter(Mandatory=$true)][string]$Folder,
	[Parameter(Mandatory=$true)][string]$CSV
)


Write-Host "Generating Hashes for "$Folder" and saving to "$CSV""
Get-ChildItem "$Folder" -Recurse | Get-FileHash | Export-Csv "$CSV"