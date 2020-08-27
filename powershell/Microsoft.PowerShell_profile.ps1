Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster
$DefaultUser = 'fabio'
$env:PYTHONIOENCODING="utf-8"
iex "$(thefuck --alias)"

## Autocomplete history
# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# https://github.com/gluons/powershell-git-aliases
Import-Module git-aliases -DisableNameChecking

# https://github.com/ajeetdsouza/zoxide
Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell) -join "`n"
})