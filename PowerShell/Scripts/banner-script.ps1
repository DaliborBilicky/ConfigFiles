function banner {
	$random = Get-Random -Minimum 1 -Maximum 11
	Write-Host ""
	switch ($random) {
		1 {
			figlet -f slant " Live and"
			figlet -f slant "	let live"
		}
		2 {
			figlet -f slant " Neovim is love"
			figlet -f slant "   Neovim is life"
		}
		3 {
			figlet -f slant " PowerShell"
		}
		4 {
			figlet -f slant " Gruvbox"
		}
		5 {
			figlet -f slant "You got this!"
		}
		6 {
			figlet -f slant "Learn, adapt, grow"
		}
		7 {
			figlet -f slant "I speak Python" 
			figlet -f slant "with a Java accent"
		}
		8 {
			figlet -f slant "Less light" 
			figlet -f slant "attracts fewer bugs"
		}
		9 {
			figlet -f slant "Bug: feature" 
			figlet -f slant "in disguise"
		}
		10 {
			figlet -f slant "I break code," 
			figlet -f slant "not hearts"
		}
	}
}
