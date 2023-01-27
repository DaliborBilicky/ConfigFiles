function sudo { Start-Process powershell –Verb RunAs }

# PowerShell Core (the latest PowerShell version from GitHub)
function sudo { Start-Process pwsh –Verb RunAs }

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

function gitSync() {
    git add .
    git commit 
    git push origin main
}

Set-Alias cdll invoke_tere
Set-Alias ls lsd_a
Set-Alias ll lsd_al
Set-Alias vim nvim

Invoke-Expression (&'C:\Program Files\starship\bin\starship.exe' init powershell --print-full-init | Out-String)
