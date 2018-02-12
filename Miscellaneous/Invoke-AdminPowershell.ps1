<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 2/8/2018

DESCRIPTION:
Run this Command to launch PowerShell as another User and as Administrator

USAGE:
.\Invoke-AdminPowershell.ps1 -AdminUser 'Username'

REQUIREMENTS:
N/A
#>

param (
    [Parameter(Mandatory = $true)]$AdminUser
)

Set-Location c:\
Start-Process powershell.exe -Credential $AdminUser -NoNewWindow -ArgumentList "Start-Process powershell.exe -Verb runAs"