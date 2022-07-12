#!/bin/sh

{{ if eq .chezmoi.os "darwin" -}}

{{ else if eq .chezmoi.os "linux" -}}

# starship
curl -fsSL https://starship.rs/install.sh | sh -s -- --yes

# apt
sudo apt update
sudo apt -y install neofetch bat duf ncdu

# lsd
lsd_version=0.22.0
wget https://github.com/Peltoche/lsd/releases/download/"${lsd_version}"/lsd_"${lsd_version}"_amd64.deb
sudo dpkg -i lsd_"${lsd_version}"_amd64.deb
rm -rf lsd_"${lsd_version}"_amd64.deb

# Font
sudo mkdir -p /usr/local/share/fonts
sudo curl -fLo "/usr/local/share/fonts/JetBrains Mono Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete.ttf
{{ end -}}
