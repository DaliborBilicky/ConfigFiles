z conf

cp -r -fo ~\AppData\Roaming\lsd .
echo "$([char] 27)[92m  $([char] 27)[0m lsd" 

cp -r -fo ~\.config\neofetch .
echo "$([char] 27)[92m  $([char] 27)[0m neofetch" 

robocopy "C:\Users\dbili\
AppData\Local\nvim" "C:\Users\dbili\
Documents\ConfigFiles\nvim" /MIR /XO > $null
echo "$([char] 27)[92m  $([char] 27)[0m nvim" 

robocopy "C:\Users\dbili\
Documents\PowerShell\Scripts" "C:\Users\dbili\
Documents\ConfigFiles\PowerShell\Scripts" /MIR /XO > $null
cp -fo ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 .\PowerShell
echo "$([char] 27)[92m  $([char] 27)[0m PowerShell" 

cp -r -fo ~\.config\starship.toml .\starship
echo "$([char] 27)[92m  $([char] 27)[0m starship" 

cp -r -fo ~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json .\WindowsTerminal
echo "$([char] 27)[92m  $([char] 27)[0m WindowsTerminal" 

git add .
git commit
git push
