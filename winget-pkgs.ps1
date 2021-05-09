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

Write-Host "Overwriting WinGet default settings with personal settings"
Copy-Item -Path settings.json -Destination "C:\Users\tobym\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json"

Write-Host "Updating WinGet sources"
winget source update

Write-Host "Installing packages via WinGet"
winget import -i .\winget-pkgs.json

Write-Host "Installing Code Settings Sync extension in VSCode"
Write-Host "You should restore settings from your GitHub gist"
Write-Host "(https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)"
code --install-extension Shan.code-settings-sync
