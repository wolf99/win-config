# Installs WSL Ubuntu from the MS Store
#
# N.B.: Will require a UNIX username and password to be set
#
# Requirements
#
# - WSL is enabled and configured
#   - See enable-wsl-pre-restart.ps1 and enable-wsl-post-restart.ps1
# - winget-cli (https://github.com/microsoft/winget-cli) - install from Microsoft Store
#   - See winget-pkgs.ps1
#
# Usage
#
# PS> .\install-ubuntu.ps1

Write-Host "Using WinGet to install Ubuntu"
winget install Canonical.Ubuntu

## No idea if this bit is needed any more
#Write-Host "Running Ubuntu install command"
#ubuntu install
