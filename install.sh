#!/bin/bash

# === Configuration ===
DOTFILES_GIT=${1:-"https://github.com/zoyern/dotfiles.git"}
WORKSPACE="$HOME/Workspace"

# === Création des dossiers ===
mkdir -p "$WORKSPACE/dev" "$WORKSPACE/docker" "$WORKSPACE/tools"

# === Mise à jour du système ===
sudo dnf upgrade -y
sudo dnf install -y dnf-plugins-core

# === Paquets de dev essentiels ===
sudo dnf install -y \
    git curl wget gcc gcc-c++ make cmake \
    neovim zsh \
    gnome-console \
    valgrind gdb \
    python3-pip \
    docker docker-compose \
    htop btop \
    util-linux-user # pour chsh

# === Ajout de l'utilisateur au groupe docker ===
sudo usermod -aG docker "$USER"
sudo systemctl enable docker
sudo systemctl start docker

# === Dotfiles ===
cd "$HOME"
if [ ! -d "$HOME/.dotfiles" ]; then
    git clone "$DOTFILES_GIT" .dotfiles
    echo "[INFO] Dotfiles clonés dans ~/.dotfiles"
    [ -f "$HOME/.dotfiles/init.vim" ] && mkdir -p ~/.config/nvim && ln -sf "$HOME/.dotfiles/init.vim" ~/.config/nvim/init.vim
    [ -f "$HOME/.dotfiles/.zshrc" ] && ln -sf "$HOME/.dotfiles/.zshrc" ~/.zshrc
else
    echo "[INFO] Dotfiles déjà présents"
fi

# === Nerd Fonts ===
sudo dnf copr enable -y che/nerd-fonts
sudo dnf update -y
sudo dnf install -y nerd-fonts
fc-cache -f -v
gsettings set org.gnome.desktop.interface monospace-font-name "FiraCode Nerd Font 11"

# === Zsh par défaut ===
chsh -s $(which zsh)

# === GNOME Console raccourci par défaut (Ctrl+Alt+T) ===
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[ '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/' ]"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/ name "GNOME Console"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/ command "gnome-console"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/ binding "<Primary><Alt>t"

# === Nettoyage ===
sudo dnf autoremove -y
sudo dnf clean all

echo -e "\n[✅] Installation terminée."
echo -e "[🚀] Redémarre la session ou l'ordi pour appliquer la police, Zsh, GNOME Console, Docker, etc."

