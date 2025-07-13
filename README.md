```markdown
# Dotfiles

Ce dépôt contient mes fichiers de configuration personnels (dotfiles) pour Zsh, Neovim, Powerlevel10k, etc.

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

## Installation

Pour installer rapidement la configuration sur une machine, copiez-collez simplement cette commande dans votre terminal :

```bash
bash <(curl -s https://raw.githubusercontent.com/zoyern/dotfiles/main/install.sh)
```

Ce script téléchargera et appliquera automatiquement la configuration.

---

## Usage

- Les fichiers shell sont dans le dossier `shell/`.
- La configuration Neovim est dans `nvim/`.
- Powerlevel10k est configuré via `.p10k.zsh` dans `shell/`.

Si vous voulez personnaliser Powerlevel10k, modifiez le fichier `.p10k.zsh` puis rechargez votre shell.

---

## Contribution

N’hésitez pas à forker, modifier, et proposer des améliorations via des Pull Requests.

---

## Licence

[MIT](LICENSE)
```

---

**Tu peux adapter ce README selon tes besoins.**

Tu souhaites aussi que je t’aide à créer un template pour `install.sh` si tu ne l’as pas fini ?
