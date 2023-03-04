# README

These are some simple scripts that help me get a fresh machine set up

Consider using [RemoveDefaultApps.ps1][] to uninstall lots of default apps that come with Windows out of the box.
You may need to edit the list as you will probably want to keep some of the items that this script removes by default.

## Windows 11 :one: :one:

## 1. Install WSL

`winget install "windows subsystem for linux" --source msstore`

You may need to reboot the machine after this step.
If this is the case, then the rebot is *mandatory*.

## 2. Install Ubuntu

`winget install Ubuntu --source msstore`

As part of this install you will need to set your Linux username and password.
This can be the same or different to the Windows username and password.
The password will need to be re-entered every time WSL restarts, so ti shoulld be memorable.

## Windows 10 :keycap_ten:

### 1. Enable-WSL-pre-restart

This enables the WSL and VM features, ready to install WSL 2 distros.
It is *mandatory* to restart the machine after this script completes and before installing the Linux kernel.

### 2. Enable-WSL-post-restart

Installs the Linux kernel on WSL and sets WSL to default to version 2 for distros.

### 3. Install-Ubuntu

Installs Ubuntu on WSL 2.
This is the "version-less" Ubuntu from the Microsoft store.
So it _should_ update when any new version is released.

This assumes WSL is already enabled.
This assumes WinGet is available

This requires Linux username and password to be set towards the end of the script.

## Winget-pkgs :package:

This installs some packages I like to have ready.

See comments in the script for information on  usage and for some packages that are _not_ installed.

Requires winget-cli (from GitHub, see script comments for link).

## File-explorer-settings :gear:

This sets some basic settings that I like for Windows File Explorer.
It is also possible to configure these settings via the GUI.
The script is based on Windows 10, I am not sure if all of the settings are applicable in Windows 11.

## TODO :memo:

- [x] Update existing information and scripts for Windows 11
- [ ] Automate the download and install of my WT settings
- [ ] Automate the download and install of my WSL Ubuntu dotfiles
- [ ] Automate the sync and download of my VSCode settings if the sync plugin allows
  - It may be possible to now use the settings profile feature built into VSCode istead of relying on this plugin
    - [VSCode profiles documentation][]
    - [VSCode profiles GitHub issue][]

[RemoveDefaultApps.ps1]: https://github.com/microsoft/windows-dev-box-setup-scripts/blob/master/scripts/RemoveDefaultApps.ps1
[VSCode profiles documentation]: https://code.visualstudio.com/docs/editor/profiles
[VSCode profiles GitHub issue]: https://github.com/microsoft/vscode/issues/116740
