<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 2/9/2018

DESCRIPTION:
Gets a list of Object Owners from AD based at the specified SearchBase

USAGE:
.\Get-ADObjectOwners.ps1 -ADSearchPath 'SearchBase DN'

REQUIREMENTS:
Active Directory PowerShell Cmdlets
#>

param (
    [Parameter(Mandatory = $true)][string]$ADSearchPath
)

Import-Module activedirectory
set-location ad:

$ADpaths = Get-ADObject -SearchBase $ADSearchPath -Filter *

$Results = @()

foreach ($ADpath in $ADpaths) {
    $ACL = (Get-Acl $ADpath.DistinguishedName -EA SilentlyContinue)
    $Row = New-Object PSObject
    $Row | Add-Member -type NoteProperty -Name 'DistinguishedName' -Value $ADpath.DistinguishedName
    $Row | Add-Member -type NoteProperty -Name 'ObjectOwner' -Value $ACL.Owner
    $Results += $Row
}

$Results