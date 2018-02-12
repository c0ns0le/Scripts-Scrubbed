<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 2/8/2018

DESCRIPTION:
Sets AD OU Owner for all OU's found in the SearchBase Provided

USAGE:
.\Set-ADOUOwner.ps1 -ADSearchPath 'SearchBaseDN' -Owner 'OwnerName'

REQUIREMENTS:
Permissions to modify OU Security
#>

param (
    [Parameter(Mandatory = $true)][string]$ADSearchPath,
    [Parameter(Mandatory = $true)][string]$Owner
)

Import-Module activedirectory
set-location ad:

$ADpaths=Get-ADOrganizationalUnit -SearchBase $ADSearchPath -Filter *

foreach ($ADpath in $ADpaths) {
$ACL = (Get-Acl $ADpath.DistinguishedName)
$ACL.SetOwner([System.Security.Principal.NTAccount] $Owner) 
Set-Acl -Path $ADpath.DistinguishedName $ACL
}