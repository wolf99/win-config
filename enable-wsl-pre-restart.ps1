# Requires -RunAsAdministrator

# Enables WSL and VM features in MS Windows 10
# N.B.: System must be restarted after this script completes and before any
# further steps
#
# https://docs.microsoft.com/en-us/windows/wsl/install-win10
#
# Usage
#
# PS> .\enable-wsl-pre-restart.ps1
#

Write-Host "Enable WSL"
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

Write-Host "Enable virtual machine feature"
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Write-Host "Now restart this machine (mandatory)"
Restart-Computer