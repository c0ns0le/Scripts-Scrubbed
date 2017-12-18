<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/4/2017

DESCRIPTION:
Collects Veeam Job Information

USAGE:
.\Get-VeeamJobs.ps1 -VeeamServers 'SERVER1','SERVER2','SERVER3','SERVER4' | Out-GridView

REQUIREMENTS:
Veeam Console or Veeam Backup and Replication 9+ Installed
#>

param (
	[Parameter(Mandatory=$true)]$VeeamServers
)

Add-PSSnapin VeeamPSSnapin

foreach($VeeamServer in $VeeamServers)
{
Connect-VBRServer -Server $VeeamServer
Get-VBRJob
Disconnect-VBRServer
}