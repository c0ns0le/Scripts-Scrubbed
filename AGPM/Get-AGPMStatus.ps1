<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2018

DESCRIPTION:
Gtes List of GPO's Controlled by AGPM, and the status of the control

USAGE:
.\Get-AGPMStatus.ps1 -Recipient 'Name@Domain.com' -MailDomain 'Domain.com' -SMTPServer 'ServerAddress'

REQUIREMENTS:
 - Modules
    - Microsoft.AGPM
     - GroupPolicy
 - Create-HTMLHead.ps1 located at "c:\Scripts\Create-HTMLHead.ps1"
#>
#Requires -Module Microsoft.AGPM
#Requires -Module GroupPolicy

param (
    [Parameter(Mandatory = $true)]$Recipient,
    [Parameter(Mandatory = $true)]$MailDomain,
    [Parameter(Mandatory = $true)]$SMTPServer
)

$ComputerName = $env:computername
$FromAddress = $ComputerName + '@' + $MailDomain
$AGPM = Get-ControlledGpo
$ADGPOS = Get-GPO -All
$GPOReport = @()

. "c:\Scripts\Create-HTMLHead.ps1"

foreach ($ADGPO in $ADGPOS) {
    $GPOName = $ADGPO.displayname

    if ($AGPM.name -contains $ADGPO.displayname) {
        $GPOControlled = "Yes"
        $ControlledGPO = $AGPM | Where-Object {$_.name -eq $ADGPO.DisplayName}

        if ([datetime]$ControlledGPO.changed -lt [datetime]$ADGPO.Modificationtime) {
            $GPOStatus = "Manually Edited in GPMC"
        }
        Elseif ([datetime]$ControlledGPO.changed -gt [datetime]$ADGPO.modificationtime) {
            $GPOStatus = "AGPM version not in Production"
        }
        if (($ControlledGPO.computerversion -eq $ADGPO.computer.DSVersion) -and ($ControlledGPO.userversion -eq $ADGPO.User.DSVersion)) {
            $GPOStatus = "AGPM version in Production"
        }
    }
    else {
        $GPOControlled = "No"
        $GPOStatus = ""
    }

    $Row = New-Object PSObject
    $Row | Add-Member -MemberType noteproperty -Name "Name" -Value $GPOName
    $Row | Add-Member -MemberType noteproperty -Name "Controlled" -Value $GPOControlled       
    $Row | Add-Member -MemberType noteproperty -Name "Status" -Value $GPOStatus

    $GPOReport += $Row
}

$GPOProblem = $GPOReport | Where-Object {$_.Status -eq "AGPM version not in Production" -or $_.Status -eq "Manually Edited in GPMC" -or $_.Controlled -eq "No"} | ConvertTo-Html -Property Name, Controlled, Status -Head $HtmlHead | Out-String
$GPONormal = $GPOReport | Where-Object {$_.Status -eq "AGPM version in Production"} | ConvertTo-Html -Property Name, Controlled, Status -Head $HtmlHead | Out-String

$HTMLProblem = '<h1>Issues</h1>'
$HTMLNormal = '<h1>All Clear</h1>'

$GPOEmail = $HTMLProblem + $GPOProblem + $HTMLNormal + $GPONormal

Send-MailMessage -SmtpServer $SMTPServer -From $FromAddress -To $Recipient -Subject "AGPM Controlled GPO Report" -BodyAsHtml $GPOEmail