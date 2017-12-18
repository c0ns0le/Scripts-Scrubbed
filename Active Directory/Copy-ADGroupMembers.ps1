<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 7/31/2017

DESCRIPTION:
Queries a Source AD Group and adds its members to the Target AD Group

USAGE:
.\Copy-ADGroupMembers.ps1 -ADSourceGroup "Groupname" -ADTargetGroup "Groupname"

REQUIREMENTS:
 - AD Powershell Cmdlets
 - Permission to modify Group Memberships
#>
param (
    [Parameter(Mandatory=$true)][string]$ADSourceGroup = $( Read-Host "Input AD Source Group, please" ),
    [Parameter(Mandatory=$true)][string]$ADTargetGroup = $( Read-Host "Input AD Taregt Group, please" )
)

$ADQuery=Get-ADGroupMember -Identity $ADSourceGroup -recursive | get-aduser -Properties * | Select-Object -ExpandProperty samaccountname

foreach($user in $ADQuery)
{
Add-ADGroupMember -Identity $ADTargetGroup -Members $user
}