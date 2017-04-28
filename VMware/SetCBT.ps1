<#
Enables or Disables CBT for a particular VM
Examples:
.\SetCBT.ps1 -CBTEnabled "$false"
.\SetCBT.ps1 -CBTEnabled "$true"
#>

param (
	[Parameter(Mandatory=$true)][string]$vm,
	[Parameter(Mandatory=$true)][string]$CBTEnabled
)

$vmtest = Get-vm $vm| get-view
$vmConfigSpec = New-Object VMware.Vim.VirtualMachineConfigSpec

$vmConfigSpec.changeTrackingEnabled = $CBTEnabled
$vmtest.reconfigVM($vmConfigSpec)
$snap=New-Snapshot $vm -Name "Change CBT"
$snap | Remove-Snapshot -confirm:$false