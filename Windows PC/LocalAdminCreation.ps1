<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2017

DESCRIPTION:
Creates Local Admin Account

USAGE:
.\LocalAdminCreation.ps1 -username <USER to Create> -password "<Password>" -desc "<Description>"

REQUIREMENTS:
N/A
#>

param (
	[string]$computername = $env:computername,
	[Parameter(Mandatory=$true)][string]$username,
	[Parameter(Mandatory=$true)][string]$desc,
	[Parameter(Mandatory=$true)][string]$password
)

$computer = [ADSI]"WinNT://$computername,computer"
$user = $computer.Create("user", $username)
$user.SetPassword($password)
$user.Setinfo()
$user.description = $desc
$user.setinfo()
$user.UserFlags = 65536
$user.SetInfo()
$group = [ADSI]("WinNT://$computername/administrators,group")
$group.add("WinNT://$username,user")