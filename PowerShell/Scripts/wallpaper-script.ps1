function Set-Wallpaper {
    param (
        [int]$image
    )

    # Check if the provided number is within the range of 1 to 5
    if ($image -ge 1 -and $image -le 5) {
        # Path of wallpaper
        $wallpaperPath = "C:\Users\dbili\Pictures\Wallpapers\$image.png"

        # Set the wallpaper
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name Wallpaper -Value $wallpaperPath

        # Update the wallpaper using SystemParametersInfo
        Add-Type -TypeDefinition @"
            using System;
            using System.Runtime.InteropServices;
            public class Wallpaper {
                [DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
                public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
            }
"@

        $result = [Wallpaper]::SystemParametersInfo(0x0014, 0, $wallpaperPath, 0x01)

        # Optionally, log the result
        Write-Host "SystemParametersInfo Result: $result Wallpaper changed."
    }
    else {
        Write-Host "Invalid option. There is only 5 images."
    }
}
