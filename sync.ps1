z conf

cp -r -fo ~\AppData\Roaming\lsd .
echo "$([char] 27)[92m 󰸞 $([char] 27)[0m lsd" 

cp -r -fo ~\AppData\Local\nvim .
echo "$([char] 27)[92m 󰸞 $([char] 27)[0m nvim" 

cp -r -fo ~\Documents\PowerShell\Scripts .\PowerShell
cp -fo ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 .\PowerShell
echo "$([char] 27)[92m 󰸞 $([char] 27)[0m PowerShell" 

cp -r -fo ~\.config\starship.toml .\starship
echo "$([char] 27)[92m 󰸞 $([char] 27)[0m starship" 

cp -r -fo ~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json .\WindowsTerminal
echo "$([char] 27)[92m 󰸞 $([char] 27)[0m WindowsTerminal" 

git add .
echo "$([char] 27)[92m 󰸞 $([char] 27)[0m git add" 
git commit
echo "$([char] 27)[92m 󰸞 $([char] 27)[0m git commit" 
git push
echo "$([char] 27)[92m 󰸞 $([char] 27)[0m git push" 
