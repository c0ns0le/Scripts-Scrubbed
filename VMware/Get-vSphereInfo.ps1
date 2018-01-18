<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/4/2017

DESCRIPTION:
Collects vSphere Information

USAGE:
.\Get-vSphereInfo.ps1 -vCenter <Servername>

REQUIREMENTS:
VMware PowerCLI Module
#>

param (
    [Parameter(Mandatory = $true)][string]$vCenter
)

Connect-VIServer $vCenter
$VMClusters = Get-Cluster

foreach ($Cluster in $VMClusters) {
    Get-VMHost -Location $Cluster
}