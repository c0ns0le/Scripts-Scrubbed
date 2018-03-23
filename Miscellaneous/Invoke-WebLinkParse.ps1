<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/23/2018

DESCRIPTION:
Parses a Website for Links

USAGE:
.\Invoke-WebLinkParse.ps1 -URL 'Website Path'

REQUIREMENTS:
Access to browse the selected Web Path
#>

param (
    [Parameter(Mandatory = $true)]$URL
)

$Request = Invoke-WebRequest $URL -UseBasicParsing
$Request.Links |Where-Object {$_.href -match "."}