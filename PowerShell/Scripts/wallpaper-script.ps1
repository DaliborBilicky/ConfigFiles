
function Set-Wallpaper {
$image = echo "Closing-hours
Glitched
The-right-time
The-quick-silver-fox-jumped
Desert-rascals
Mid-rox-charge
Solar-day-255
Finally-coffee-s-here
Harvest
Petrolea
Redrouf
For-sale" | fzf

$wallpaperPath = "C:\Users\dbili\Pictures\Wallpapers\$image-Ismail-Inceoglu.jpg"

Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name Wallpaper -Value $wallpaperPath

Add-Type -TypeDefinition @"
	using System;
	using System.Runtime.InteropServices;
	public class Wallpaper {
		[DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
		public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
	}
"@

$a = [Wallpaper]::SystemParametersInfo(0x0014, 0, $wallpaperPath, 0x01)
echo "Wallpaper set to: $image"
}
