<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/7/2017

DESCRIPTION:
Gets Log Information for IIS Servers

USAGE:
.\Get-IISLogInfo.ps1 -IISServerNames 'SERVER1','SERVER2','SERVER3','SERVER4' | Out-GridView

REQUIREMENTS:
Remote Administrative Rights to IIS Servers
#>

param (
    [Parameter(Mandatory=$true)]$IISServerNames
)

$IISResults = @{}

foreach($IISServer in $IISServerNames)
{
Invoke-Command -ComputerName $IISServer -ScriptBlock {Import-Module WebAdministration}
$value=Invoke-Command -ComputerName $IISServer -ScriptBlock {(Get-WebConfigurationProperty '/system.applicationHost/sites/siteDefaults' -Name 'logfile')}

$IISResults += @{
    $IISServer = @{
        LogDirectory = $value.directory
        Period = $value.period
        Format = $value.logformat
        }
    }
    
}

$IISResults