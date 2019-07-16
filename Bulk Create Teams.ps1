# Bulk Create Teams
# Maarten Camps

[array]$teams = Import-Csv .\createteams.csv # Import CSV

$prefix = "Team-" # Team Prefix

foreach ($team in $teams) {

    $t = $team.Name

    $mailnickname = $prefix+$t #mailnickname is belangrijk om te vullen anders wordt deze random gegenereerd

    New-Team -DisplayName $t -Description $t -MailNickName $mailnickname -AllowGuestCreateUpdateChannels $false -AllowGuestDeleteChannels $false -AllowDeleteChannels $false -AllowAddRemoveApps $false -AllowCreateUpdateRemoveTabs $false -AllowCreateUpdateChannels $false -AllowCreateUpdateRemoveConnectors $false -ShowInTeamsSearchAndSuggestions $true
    #Set standard template attributes
    }