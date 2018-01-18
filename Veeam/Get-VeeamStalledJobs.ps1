<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 1/11/2018

DESCRIPTION:
Gets Veeam Jobs running longer than 13 Hours and sends an E-mail

USAGE:
.\Get-VeeamStalledJobs.ps1 -Recipient 'Name@Domain.com' -MailDomain 'Domain.com' -SMTPServer 'ServerAddress' -JobHours '13'

REQUIREMENTS:
Veeam Console or Veeam Backup and Replication 9+ Installed
#>

param (
    [Parameter(Mandatory = $true)]$Recipient,
    [Parameter(Mandatory = $true)]$MailDomain,
    [Parameter(Mandatory = $true)]$SMTPServer,
    [Parameter(Mandatory = $true)]$JobHours
)

Add-PSSnapin VeeamPSSnapin

$ComputerName = $env:computername
$FromAddress = $ComputerName + '@' + $MailDomain
$Date = Get-Date
$Jobs = Get-VBRJob | where {$_.Getlaststate() -eq "Working"}
Foreach ($Job in $Jobs) {
    if (($Date - ($Job.FindLastSession().CreationTime)).hours -ge $JobHours) {
        $Job | Send-MailMessage -SmtpServer $SMTPServer -From $FromAddress -To $Recipient -Subject "Veeam Job $Job running on $ComputerName has been running longer than expected"
    }
}