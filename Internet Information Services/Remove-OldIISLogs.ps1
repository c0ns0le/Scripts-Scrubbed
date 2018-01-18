<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/15/2017
Modified - 1/11/2018

DESCRIPTION:
Removes up old IIS Logs beyond 2 weeks for specified Servers. If run on the Local Server it will run the commands locally

USAGE:
.\Remove-OldIISLogs.ps1 -IISServerNames 'SERVER1','SERVER2','SERVER3','SERVER4'

REQUIREMENTS:
Remote Administrative Rights to the IIS Server
#>

param (
    [Parameter(Mandatory = $true)]$IISServerNames
)

If ($IISServerNames -eq $env:computername) {
    foreach ($IISServer in $IISServerNames) {
        Import-Module 'C:\Windows\System32\WindowsPowerShell\v1.0\Modules\WebAdministration\WebAdministration.psd1'
        $IISLogDir = (Get-WebConfigurationProperty '/system.applicationHost/sites/siteDefaults' -Name 'logfile').directory
           
    }
    $IISLogDir = $IISLogDir -replace ':', '$'
    $IISLogDir = '\\' + $IISServer + '\' + $IISLogDir

    Get-ChildItem -Path $IISLogDir -Recurse -File | Where-Object CreationTime -lt  (Get-Date).AddDays(-14) | Remove-Item -Force
}

Else {
    foreach ($IISServer in $IISServerNames) {
        $IISLogDir = Invoke-Command -ComputerName $IISServer -ScriptBlock {
            Import-Module 'C:\Windows\System32\WindowsPowerShell\v1.0\Modules\WebAdministration\WebAdministration.psd1'
            (Get-WebConfigurationProperty '/system.applicationHost/sites/siteDefaults' -Name 'logfile').directory
        }
        $IISLogDir = $IISLogDir -replace ':', '$'
        $IISLogDir = '\\' + $IISServer + '\' + $IISLogDir

        Get-ChildItem -Path $IISLogDir -Recurse -File | Where-Object CreationTime -lt  (Get-Date).AddDays(-14) | Remove-Item -Force
    }    
} 