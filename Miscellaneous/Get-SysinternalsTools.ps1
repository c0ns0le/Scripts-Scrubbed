<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/23/2018

DESCRIPTION:


USAGE:
.\Get-SysinternalsTools.ps1 -DownloadPath 'Path to location to save Zip File' -LivePath 'Path to "Live" Copy'

REQUIREMENTS:
Web Connection
#>

param (
    [Parameter(Mandatory = $true)]$DownloadPath,
    [Parameter(Mandatory = $true)]$LivePath
)

$WebPath = "http://live.sysinternals.com/Files/SysinternalsSuite.zip"


Invoke-WebRequest -UseBasicParsing -Uri $WebPath -OutFile $DownloadPath\Update.Zip -Verbose 
Expand-Archive -LiteralPath $DownloadPath\Update.Zip -DestinationPath $LivePath -Force