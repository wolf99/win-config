# Installs default set of packages using winget-cli
#
# Requirements
#
# - winget-cli (https://github.com/microsoft/winget-cli), i.e. install "App Installer" from Microsoft Store
#
# Not Installed
#
# - Mp3Tag.Mp3tag
# - MS Office
# - Artemis SBS
#
# Usage
#
# PS> .\winget-pkgs.ps1
#

$new_winget_settings "settings.json"
$winget_settings = "C:\Users\tobym\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json"
$new_winget_pkgs = "winget-pkgs.json"

Write-Host "Overwriting WinGet default settings with personal settings"
Copy-Item -Path $new_winget_settings -Destination  $winget_settings

Write-Host "Updating WinGet sources"
winget source update

Write-Host "Installing packages via WinGet"
winget import -i $new_winget_pkgs

Write-Host "Installing Code Settings Sync extension in VSCode"
Write-Host "You should restore settings from your GitHub gist"
Write-Host "(https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)"
code --install-extension Shan.code-settings-sync
