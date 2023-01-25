function sudo { Start-Process powershell –Verb RunAs }

# PowerShell Core (the latest PowerShell version from GitHub)
function sudo { Start-Process pwsh –Verb RunAs }

# Alias
function lsd_a {
    lsd -a
}
function lsd_al {
    lsd -al
}
function invoke_tere() {
    $result = . (Get-Command -CommandType Application tere) $args
    if ($result) {
        Set-Location $result
    }
}

function gitSyncConfig() {
    git add .
    git commit -m "nothing"
    git push origin main
}

Set-Alias cdll invoke_tere
Set-Alias ls lsd_a
Set-Alias ll lsd_al
Set-Alias vim nvim


# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Invoke-Expression (&'C:\Program Files\starship\bin\starship.exe' init powershell --print-full-init | Out-String)
