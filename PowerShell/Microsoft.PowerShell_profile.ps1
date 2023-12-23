# Import modules
Import-Module PSFzF
Import-Module posh-git
Import-Module z

# Functions
function gitSync {
    git add .
    git commit 
    git push origin main
}
 
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

# Alias
Remove-Alias ls
Set-Alias vim nvim
Set-Alias nf neofetch
Set-Alias vi nvim
Set-Alias mkf touch
Set-Alias cc clear
Set-Alias man tldr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'

# Autocomplete
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# Fzf / PSFzf
Set-PSFzFOption -PSReadlineChordProvider 'Ctrl+f' 
Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSFzFOption -EnableAliasFuzzySetLocation -EnableAliasFuzzyEdit
Set-PsFzfOption -TabExpansion
$env:FZF_DEFAULT_OPTS="
--layout=reverse --cycle --info=hidden --prompt='ƒ: ' --pointer='➜' --marker=''
--height=50% --multi --preview-window=hidden
--color=16,bg+:-1,gutter:-1,fg+:blue,prompt:white,pointer:green,marker:yellow
--bind 'alt-j:down','alt-k:up'"


# Color tweaks
Set-PSReadLineOption -Colors @{
    Command                  = 'Green'
    Parameter                = 'Gray'
    Number                   = 'Magenta' 
    Variable                 = 'Cyan'
    String                   = 'Cyan'
    Comment                  = '#665c54'
    Default                  = 'White'
}


# Start StarShip
Invoke-Expression (starship init powershell --print-full-init | Out-String)
