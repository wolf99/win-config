# Enables developer mode & WSL (v1) feature in MS Windows 10
# N.B.: To complete WSL feature enable, system must be restarted
#
# Usage
#
# PS> .\enable-wsl.ps1
#

Write-Host "Enabling developer mode..."
Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock -Name AllowDevelopmentWithoutDevLicense -Value 1

Write-Host "Enabling WSL (v1) feature"
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux