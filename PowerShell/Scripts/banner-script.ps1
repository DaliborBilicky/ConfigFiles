function banner {
	$random = Get-Random -Minimum 0 -Maximum 4
	Write-Host ""
	switch ($random) {
		0 {
			figlet -f slant " Live and"
			figlet -f slant "   let live"
		}
		1 {
			figlet -f slant " Neovim is love"
			figlet -f slant "   Neovim is life"
		}
		2 {
			figlet -f slant " PowerShell"
		}
		3 {
			$a = pwd
			$b = Split-Path -Path $a -Leaf -Resolve
			if ($b -eq "dbili") {
				$b = "Home"
			}
			figlet -f slant "Dir:"$b
		}
	}
}
