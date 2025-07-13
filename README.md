# Dotfiles

Ce dépôt contient des fichiers de configuration (dotfiles) pour Zsh, Neovim etc...

## Installation

Pour installer rapidement la configuration sur une machine, copiez-collez simplement cette commande dans votre terminal :

```bash
bash <(curl -s https://raw.githubusercontent.com/zoyern/dotfiles/main/install.sh)
```

Ce script téléchargera et appliquera automatiquement la configuration.

## Structure du dépôt

```
.
├── install.sh        # Script d'installation principal
├── nvim/             # Configuration Neovim
│   ├── init.lua
│   └── lua/
├── shell/            # Configuration shell (zsh, themes, etc.)
│   ├── .zshrc
│   ├── .p10k.zsh
│   └── themes/
└── README.md
```

---

## Usage

- La configuration Neovim est dans `nvim/`.
- Les fichiers shell sont dans le dossier `shell/`.
- Powerlevel10k est configuré via `.p10k.zsh` dans `shell/`.

Si vous voulez personnaliser Powerlevel10k, modifiez le fichier `.p10k.zsh` ou `p10k configure` puis rechargez votre shell.

---
