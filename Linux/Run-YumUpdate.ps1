<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/18/2017

DESCRIPTION:
Runs yum-y upate on remote Linux Servers

USAGE:
.\Run-YumUpdate.ps1 -LIServer '<Server>'

REQUIREMENTS:
 - Linux root/wheel Credentials
 - Posh-Git PowerShell Module
#>
Import-Module Posh-SSH

$LICredentials = Get-Credential

New-SSHSession -ComputerName $LIServer -Credential $LICredentials
$YumUpdate = (Invoke-SSHCommand -SessionId 0 -Command {yum -y update})
Remove-SSHSession 0
$YumUpdate.Output