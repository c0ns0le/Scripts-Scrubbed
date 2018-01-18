<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/8/2017

DESCRIPTION:
Gets Windows Update Agent Information from select PC's

USAGE:
.\Get-WUA.ps1 -$WUAPCs -WUAPCs '<PC1>','PC2'

REQUIREMENTS:
Remote Administrator rights on specified PC's
#>

param (
    [Parameter(Mandatory = $true)]$WUAPCs
)

ForEach ($WUAPC in $WUAPCs) {
    (Get-ItemProperty -Path \\$WUAPC\C$\Windows\System32\wuaueng.dll).VersionInfo
}