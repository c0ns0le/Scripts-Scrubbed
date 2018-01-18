<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/19/2017

DESCRIPTION:
Sets up HTML Header for a Table/Export

USAGE:
.\Create-HTMLHead.ps1

    EXAMPLE:
    $HTML1 = Get-PSDrive | ConvertTo-Html -Property Name, Used, Provider, Root, CurrentLocation -Head $HtmlHead
    $HTML2 = Get-PSDrive | ConvertTo-Html -Property Name, Used, Provider, Root, CurrentLocation -Head $HtmlHead
    $Report = $HTML1 + $HTML2
    $Report | Out-File -FilePath PSDrives.html

REQUIREMENTS:
N/A
#>

$HtmlHead = '<style>
    body {
        background-color: white;
        font-family:      "Calibri";
    }

    table {
        border-width:     1px;
        border-style:     solid;
        border-color:     black;
        border-collapse:  collapse;
        width:            100%;
    }

    th {
        border-width:     1px;
        padding:          5px;
        border-style:     solid;
        border-color:     black;
        background-color: #98C6F3;
    }

    td {
        border-width:     1px;
        padding:          5px;
        border-style:     solid;
        border-color:     black;
        background-color: White;
    }

    tr {
        text-align:       left;
    }
</style>'