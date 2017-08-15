<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2017

DESCRIPTION:
Enables or Disables CBT for a particular VM

USAGE:
.\SetCBT.ps1 -CBTEnabled "$false"
.\SetCBT.ps1 -CBTEnabled "$true"

REQUIREMENTS:
 - VMware PowerCLI
#>

param (
	[Parameter(Mandatory=$true)][string]$vm,
	[Parameter(Mandatory=$true)][string]$CBTEnabled
)

Import-Module VMware.PowerCLI

$vmtest = Get-vm $vm| get-view
$vmConfigSpec = New-Object VMware.Vim.VirtualMachineConfigSpec

$vmConfigSpec.changeTrackingEnabled = $CBTEnabled
$vmtest.reconfigVM($vmConfigSpec)
$snap=New-Snapshot $vm -Name "Change CBT"
$snap | Remove-Snapshot -confirm:$false