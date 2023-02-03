Write-Host ""
Write-Host "██████╗  █████╗  ██╗       ██╗███████╗██████╗   ██████╗██╗  ██╗███████╗██╗     ██╗     " -ForegroundColor DarkRed
Write-Host "██╔══██╗██╔══██╗ ██║  ██╗  ██║██╔════╝██╔══██╗ ██╔════╝██║  ██║██╔════╝██║     ██║     " -ForegroundColor DarkYellow
Write-Host "██████╔╝██║  ██║ ╚██╗████╗██╔╝█████╗  ██████╔╝ ╚█████╗ ███████║█████╗  ██║     ██║     " -ForegroundColor DarkGreen
Write-Host "██╔═══╝ ██║  ██║  ████╔═████║ ██╔══╝  ██╔══██╗  ╚═══██╗██╔══██║██╔══╝  ██║     ██║     " -ForegroundColor DarkCyan
Write-Host "██║     ╚█████╔╝  ╚██╔╝ ╚██╔╝ ███████╗██║  ██║ ██████╔╝██║  ██║███████╗███████╗███████╗" -ForegroundColor DarkBlue
Write-Host "╚═╝      ╚════╝    ╚═╝   ╚═╝  ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝" -ForegroundColor DarkMagenta

# Alias
function lsd_a {
    lsd -a --group-directories-first
}
function lsd_al {
    lsd -al --group-directories-first
}
function invoke_tere() {
    $result = . (Get-Command -CommandType Application tere) $args
    if ($result) {
        Set-Location $result
    }
}
Set-Alias cdll invoke_tere
Set-Alias ls lsd_a
Set-Alias ll lsd_al
Set-Alias vim nvim
Set-Alias nf neofetch

# Useful functions
function gitSync() {
    git add .
    git commit 
    git push origin main
}
function sudo { Start-Process powershell –Verb RunAs }
function sudo { Start-Process pwsh –Verb RunAs }

# Start StarShip
Invoke-Expression (&'C:\Program Files\starship\bin\starship.exe' init powershell --print-full-init | Out-String)
