<#
Changes Mailbox type to Room
Examples:
.\ConverttoRoomMailbox.ps1 -Mailbox ConfRoom1
#>

param (
	[Parameter(Mandatory=$true)][string]$Mailbox
)

Set-Mailbox $Mailbox -Type Room