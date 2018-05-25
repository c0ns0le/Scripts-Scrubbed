<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 2/5/2018

DESCRIPTION:


USAGE:
.\Get-HostnameInfo.ps1 -IPAddresses 'Addresses'

REQUIREMENTS:

#>

param (
    [Parameter(Mandatory = $true)]$IPAddresses
)

$Results = @()

foreach ($IPAddress in $IPAddresses) {
    $DNSResolution = Resolve-DNSName $IPAddress -EA SilentlyContinue
    $ConnectionTest = Test-Connection -computer $IPAddress -quiet
    
    $Row = New-Object PSObject
    $Row | Add-Member -type NoteProperty -Name 'IPAddress' -Value $IPAddress 
    $Row | Add-Member -type NoteProperty -Name 'Hostname' -Value $DNSResolution.NameHost
    $Row | Add-Member -type NoteProperty -Name 'DNSRecordType' -Value $DNSResolution.Type
    $Row | Add-Member -type NoteProperty -Name 'TTL' -Value $DNSResolution.TTL
    $Row | Add-Member -type NoteProperty -Name 'RecordName' -Value $DNSResolution.Name
    $Row | Add-Member -type NoteProperty -Name 'Online' -Value $ConnectionTest
    $Row | Add-Member -type NoteProperty -Name 'DNS IPAddress' -Value $DNSResolution.IPAddress
    $Results += $Row    
}

$Results