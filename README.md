# Hyprland Dotfiles!

<img src="images/Desktop.png" alt="img">

## Setup.

> This is a basic guide about what my hyprland dotfiles.

### Installation (Manual)

> After cloning the repository, install the necessary dependencies to replicate by setup assuming your using **Fedora**.

```sh
 $ sudo dnf install -S hyprland curl git grim gvfs ImageMagick jq kitty kvantum neovim network-manager-applet openssl pamixer pavucontrol pipewire-alsa playerctl polkit-gnome python3-request pyton3-pip qt5ct qt5ct qt6-qtsvg rofi-wayland
```

> Then after the dependencies are installed, copy the files to it's respective folders.

```sh
 $ cp -r ./config/* $HOME/.config/
 $ mkdir -p $HOME/.local/bin/ && cp -r ./bin/* $HOME/.local/bin/
```

> You will need to install a few fonts.

- **JetBrainsMono NF:** [here](https://github.com/ryanoasis/nerd-fonts)
- **Font Awesome:** [here](https://fontawesome.com/download)
- **CaskaydiaCove NerdFont :** [here](https://www.nerdfonts.com/font-downloads)

> Once finished copying the files, you might want to change your shell.

```sh
 # Change your shell to fish
 $ chsh -s /usr/bin/fish
```

## Acknowledgements.

- **Thanks to**

  - [JaKoolLit](https://github.com/JaKooLit/) for some scripts and configs.
    <br>
