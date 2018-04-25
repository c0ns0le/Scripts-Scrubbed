<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/12/2017

DESCRIPTION:


USAGE:
.\Get-VMwareMap.ps1 -vCenter <Servername>

REQUIREMENTS:
VMware PowerCLI
#>

param (
    [Parameter(Mandatory = $true)][string]$vCenter
)


Import-Module vmware.powercli
$VMWARECred = Get-Credential -Message 'Please enter VMware vCenter Credentials'
Connect-VIserver -Credential $VMWARECred -Server $vCenter

# Datacenter Information
$VMDatacenter = Get-Datacenter

# Host Information
$VMHostInfo = Get-VMHost | Select-Object Name, @{N = ”Cluster”; E = {Get-Cluster -VMHost $_}}, @{N = ”Datacenter”; E = {Get-Datacenter -VMHost $_}} 

# VM Information
New-VIProperty -ObjectType VirtualMachine -Name Cluster -Value {$Args[0].VMHost.Parent} -Force
$VMInfo = ForEach ($VMHost in $VMHostInfo) {
    Get-VM -Location $VMHost.Name | Select-Object -Property Name, Cluster, VMHost
}