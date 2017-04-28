<#
Gets RSOP Data for the specified User and Computer
Examples:
.\GetRSOP.ps1 -SveLoc C:\Reports\User.HTML -PCName PC1.Domain.Com -Username User1
#>

param (
	[Parameter(Mandatory=$true)][string]$SveLoc,
	[Parameter(Mandatory=$true)][string]$PCName,
	[Parameter(Mandatory=$true)][string]$Username
)

Get-GPResultantSetofPolicy -Path $SveLoc -ReportType Html -Computer $PCName  -User $Username