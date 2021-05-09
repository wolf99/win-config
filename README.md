# README

Some Simple scripts that help me get a fresh machine set up

Consider using the following to uninstall a whole bunch of default apps that come with Windows out of the box. May need to edit the list as probably want to keep some of the ones this script removes by default

https://github.com/microsoft/windows-dev-box-setup-scripts/blob/master/scripts/RemoveDefaultApps.ps1

## 1. Enable-WSL

This enables developer mode and the WSL subsystem for WSL v1.
Requires system restart after completing, before WSL distro can be installed.

(v2 requires Windows 2004 which hasn't rolled out just yet)

## 2. Install-Ubuntu

Installs Ubuntu on WSL v1. this is the "version-less" Ubuntu from the Microsoft store.
So it _should_ update when any new version is released.

Assumes WSL is already enabled.

Requires Unix username and password to be set towards the end of the script.

## 3. Winget-pkgs

Installs some packages I like to have ready.

See script comments for usage and for some packages that are _not_ installed.

Requires winget-cli (from GitHub, see script comments for link).
