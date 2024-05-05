#   _    ____  ____   ___  _____ ___ _     _____
#  | |  |  _ \|  _ \ / _ \|  ___|_ _| |   | ____|
# / __) | |_) | |_) | | | | |_   | || |   |  _|
# \__ \ |  __/|  _ <| |_| |  _|  | || |___| |___
# (   / |_|   |_| \_\\___/|_|   |___|_____|_____|
#  |_|




# Env variables 
$env:LC_MESSAGES="en-US"
$OutputEncoding = [System.Text.Encoding]::UTF8


# Import banner-script
. "C:\Users\dbili\Documents\PowerShell\Scripts\banner-script.ps1"


# Import modules
Import-Module PSFzF
Import-Module posh-git
Import-Module z


# Functions 
function ch {
    cd C:\Users\dbili\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine
    vim ConsoleHost_history.txt
}

function update {
    sudo winget update --all
    sudo scoop update
    echo "PowerShell module update." 
    sudo Update-Module
    vim
}


# Functions for aliases
function ls {lsd -a --group-directories-first}
function ll {lsd -al --group-directories-first}
function touch($path) {set-content -Path ($path) -Value ($null)} 
function mkdir($path) {New-Item -Path ($path) -ItemType Directory | Out-Null} 
function clear_with_banner {clear | banner}


# Alias
Remove-Alias ls
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias mkf touch
Set-Alias cc clear_with_banner
Set-Alias man tldr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias syncConfig '~\Documents\ConfigFiles\sync.ps1'


# Auto complete
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }


# Vi mode in powershell
Set-PSReadLineOption -HistorySearchCursorMovesToEnd:$true
Set-PSReadLineOption -EditMode vi


# Fzf / PSFzf
Set-PSFzFOption -PSReadlineChordProvider 'Ctrl+f' 
Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSFzFOption -EnableAliasFuzzySetLocation 
Set-PsFzfOption -TabExpansion
$env:FZF_DEFAULT_OPTS="
--layout=reverse --cycle --info=hidden --prompt='ƒ: ' --pointer='➜' --marker='*'
--height=50% --multi --preview-window=hidden
--color=16,bg+:-1,gutter:-1,fg+:blue,prompt:white,pointer:green,marker:yellow
--bind 'alt-j:down','alt-k:up'"


# Color tweaks
Set-PSReadLineOption -Colors @{
    Command                  = 'White'
    Parameter                = 'White'
    String                   = 'Green'
    Variable                 = 'Cyan'
    Number                   = 'Magenta' 
    Comment                  = 'DarkGray'
	Default					 = 'Gray'
}


# Start StarShip
cc
Invoke-Expression (starship init powershell --print-full-init | Out-String)
