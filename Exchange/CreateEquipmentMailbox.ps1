<#
Creates a new Room Mailbox and sets it to automaticaly process requests
Examples:
.\CreateEquipmentMailbox.ps1 -MBDB "MailboxDatabase 1" -NewMBName"EquipmentMailbox 1" -ADOU "OU=SubOU,DC=Domain,DC=com" -DN "EquipmentMailbox 1" -UPN "EquipmentMailbox-1@Doamion.com"
#>
param (
	[Parameter(Mandatory=$true)][string]$MBDB,
	[Parameter(Mandatory=$true)][string]$NewMBName,
	[Parameter(Mandatory=$true)][string]$ADOU,
	[Parameter(Mandatory=$true)][string]$DN,
	[Parameter(Mandatory=$true)][string]$UPN
)

New-Mailbox -Database $MBDB -Name $NewMBName -OrganizationalUnit $ADOU -DisplayName $DN -UserPrincipalName $UPN -Equipment
Set-CalendarProcessing $NewMBName -AutomateProcessing AutoAccept
