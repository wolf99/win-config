# Installs default set of packages using winget-cli
# Assumes git is already installed
#
# Requirement
#
# - winget-cli (https://github.com/microsoft/winget-cli)
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
# winget install Git.Git  # Assumes already installed
winget install Microsoft.WindowsTerminal Microsoft.VisualStudioCode
# winget install Notepad++.Notepad++
winget File-New-Project.EarTrumpet
winget TranslucentTB.TranslucentTB
winget qBittorrent.qBittorrent