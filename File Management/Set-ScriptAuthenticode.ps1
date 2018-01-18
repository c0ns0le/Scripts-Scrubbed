<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2017
Modified - 12/7/2017

DESCRIPTION:
Signs PowerShell Scripts with a Code Signing Certificate

USAGE:
.\Set-ScriptAuthenticode.ps1 -Script <Path to Script> -CertificateID <ID of Code Signing Certificate imported into Local Store>

REQUIREMENTS:
 - Code Signing Certificate issued by a Trusted CA where the Scripts will be executed
    - Add Certificates Snap-in to MMC
    - Right Click Personal > All Tasks > Request New Certificate
    - Active Directory Enrollment Policy > Next > Code Signing > Finish
#>

param (
    [Parameter(Mandatory = $true)]$CertificateID,
    [Parameter(Mandatory = $true)]$Script
)

$cert = Get-Item Cert:\CurrentUser\My\$CertificateID
Set-AuthenticodeSignature -FilePath $Script -Certificate $cert