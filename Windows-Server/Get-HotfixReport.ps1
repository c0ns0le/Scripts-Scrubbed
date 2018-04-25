<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2018

DESCRIPTION:


USAGE:
.\Get-HotfixReport.ps1 -Computers <PC1,PC2,PC3> -HotfixID <KB Number>

REQUIREMENTS:
 - Remote Administrative access to Computers
#>

param (
    [Parameter(Mandatory = $true)]$Computers,
    [Parameter(Mandatory = $true)]$HotfixID

)

$HotfixReport = @()

foreach ($ComputerName in $Computers) {
    $Hotfix = if (Get-HotFix -Id $HotfixID -ComputerName $ComputerName) {
        "Installed"
    }
    else {
        "Not Installed"
    }

    $Row = New-Object PSObject
    $Row | Add-Member -type NoteProperty -Name 'Server' -Value $ComputerName
    $Row | Add-Member -type NoteProperty -Name $HotfixID -Value $Hotfix

    $HotfixReport += $Row
}

$HotfixReport