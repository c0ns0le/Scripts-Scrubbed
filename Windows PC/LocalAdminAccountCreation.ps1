<#
Creates Local Admin Account
Examples:
.\LocalAdminAccountCreation.ps1 -computername PC1 -username User -password Password -desc "Description"
.\LocalAdminAccountCreation.ps1 -username User -password Password -desc "Description"
#>

param (
	[string]$computername = $($env:computername),
	[Parameter(Mandatory=$true)][string]$username,
	[Parameter(Mandatory=$true)][string]$password,
	[Parameter(Mandatory=$true)][string]$desc
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