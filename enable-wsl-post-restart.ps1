# Requires -RunAsAdministrator

# Run this after restarting after running enable-wsl-pre-restart.ps1
# downloads and installs the required linux kernel update and subsequently
# sets WSL to defalt to version 2
# N.B.: System must have been restarted prior to running this script
#
# https://docs.microsoft.com/en-us/windows/wsl/install-win10
#
# Usage
#
# PS> .\enable-wsl-post-restart.ps1
#

Write-Host "Downloading Linux Kernel update package for x64"
$uri = "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"
$msi = "wsl_update_x64.msi"
Invoke-WebRequest -Uri $uri -OutFile $OutFile

Write-Host "Setting WSL to default to version 2"
wsl --set-default-version 2
