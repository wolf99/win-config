# Installs WSL (v1) Ubuntu from the MS Store
# Assumes WSL (v1) is already enabled
#
# N.B.: Will require a UNIX username and password to be set
#
# Detail
#
# I haven't used winget-cli for this as that does not yet have the
# "versionless" package (it only has wsl-ubuntu-1804)
#
# Usage
#
# PS> .\install-ubuntu.ps1

Write-Host "Downloading wsl-ubuntu from Microsoft Store"
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu -OutFile ~/Ubuntu.appx -UseBasicParsing

Write-Host "Installing wsl-ubuntu package"
Add-AppxPackage -Path ~/Ubuntu.appx

Write-Host "Running Ubuntu install command"
ubuntu install
