<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2017

DESCRIPTION:
Changes Mailbox type to Room

USAGE:
.\ConverttoRoomMailbox.ps1 -Mailbox ConfRoom1

REQUIREMENTS:
 - Exchange Management Shell
#>

param (
	[Parameter(Mandatory=$true)][string]$Mailbox
)

Set-Mailbox $Mailbox -Type Room