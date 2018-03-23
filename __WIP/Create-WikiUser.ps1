<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/23/2018

DESCRIPTION:
Uses the CreateAndPromote.php yo create a Mediawiki User

php createAndPromote.php [--bureaucrat] [--sysop] [--bot] [--custom-groups=<group1>, <group2>] [--force] username [password]

USAGE:
.\

REQUIREMENTS:

#>

# PHP
php createAndPromote.php --bureaucrat --sysop --force $USERNAME Password1

#SQL
UPDATE $DATABASE.user SET user_email = '$EMAIL' WHERE user_name = '$USERNAME';