#!/bin/sh

{{ if eq .chezmoi.os "darwin" -}}

{{ else if eq .chezmoi.os "linux" -}}

# starship
curl -fsSL https://starship.rs/install.sh | sh -s -- --yes

# apt
sudo apt update

# neofetch
sudo apt -y install neofetch

# lsd
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd-musl_0.21.0_amd64.deb
sudo dpkg -i lsd_0.21.0_amd64.deb

# Font
sudo mkdir -p /usr/local/share/fonts
curl -fLo "/usr/local/share/fonts/JetBrains Mono Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete.ttf
{{ end -}}
