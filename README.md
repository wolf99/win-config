# README

Some Simple scripts that help me get a fresh machine set up

Consider using [RemoveDefaultApps.ps1][] to uninstall lots of default apps that come with Windows out of the box.
May need to edit the list as probably want to keep some of the ones this script removes by default

## 1. Enable-WSL-pre-restart

This enables WSL and VM features ready to install WSL 2 distros.
Mandatory to restart after script completes and before installing the Linux kernel.

## 2. Enable-WSL-post-restart

Installs Linux kernel on WSL and sets WSL to default to version 2 for distros.

## 3. Install-Ubuntu

Installs Ubuntu on WSL 2.
This is the "version-less" Ubuntu from the Microsoft store.
So it _should_ update when any new version is released.

Assumes WSL is already enabled.
Assumes WinGet is available

Requires Unix username and password to be set towards the end of the script.

## 4. Winget-pkgs

Installs some packages I like to have ready.

See script comments for usage and for some packages that are _not_ installed.

Requires winget-cli (from GitHub, see script comments for link).

## 5. File-explorer-settings

Sets some basi settings that I like for Windows File Explorer

## TODO

- Automate download and install of WT settings
- Automate download and install of WSL Ubuntu dotfiles
- Automate sync and download of vSCode settings if sync plugin allows

[RemoveDefaultApps.ps1]: https://github.com/microsoft/windows-dev-box-setup-scripts/blob/master/scripts/RemoveDefaultApps.ps1