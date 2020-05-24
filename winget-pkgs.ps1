# Installs default set of packages using winget-cli
# Assumes git is already installed
#
# Requirement
#
# - winget-cli (https://github.com/microsoft/winget-cli)
#   - If scripting this, see: https://gist.github.com/lukechilds/a83e1d7127b78fef38c2914c4ececc3c
#
# Not Installed
#
# - Git.Git (assumes already in place)
# - Notepad++.Notepad++ (do I still need this with vscode in place?)
# - Microsoft.VisualStudio
# - Microsoft.PowerToys
# - calibre.calibre
# - GiorgioTani.PeaZip
# - Discord.Discord
# - VideoLAN.VLC
# - IntelliJ IDEs
# - NetBeans
# - Eclipse
# - Android Studio
# - Mp3Tag
# - MS Office
# - Nitro PDF Reader
# - Artemis SBS
#
# Usage
#
# PS> .\winget-pkgs.ps1
#

winget source update

winget install Google.Chrome
winget File-New-Project.EarTrumpet
winget TranslucentTB.TranslucentTB
winget qBittorrent.qBittorrent

winget install Microsoft.WindowsTerminal Microsoft.VisualStudioCode
Write-Host "Installing Code Settings Sync extension in VSCode"
Write-Host "You should restore settings from your GitHub gist"
Write-Host "(https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)"
code --install-extension Shan.code-settings-sync