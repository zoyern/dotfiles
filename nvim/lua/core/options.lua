local opt = vim.opt -- raccourci pour un peu plus de concision

-- numéros de ligne
-- affichage des numéros de ligne relatives à la position actuelle du curseur
opt.relativenumber = true
-- affiche le numéro absolu de la ligne active
opt.number = true

-- tabs & indentation
-- espaces pour les tabulations
opt.tabstop = 4
-- espaces pour la taille des indentations
opt.shiftwidth = 4
-- pour que <Tab> insère des espaces visuellement
opt.softtabstop = 4
-- change les tabulations en espaces
opt.expandtab = false
-- adapte les tabulations en début de ligne
opt.smarttab = true
-- on garde l'indentation actuelle à la prochaine ligne
opt.autoindent = true
-- indentation automatique intelligente pour les langages comme C/C++
opt.smartindent = true

-- recherche
-- ignore la casse quand on recherche
opt.ignorecase = true
-- sauf quand on fait une recherche avec des majuscules
opt.smartcase = true
-- surlignage de toutes les occurences de la recherche en cours
opt.hlsearch = true
-- montre les résultats au fur et à mesure de la frappe
opt.incsearch = true

-- ligne du curseur
-- surlignage de la ligne active
opt.cursorline = true

-- apparence
-- nécessaire pour que les thèmes modernes fonctionnent
opt.termguicolors = true
-- dark ou light en fonction de votre préférence
opt.background = "dark"
-- évite les décalages quand on affiche des signes (lint, git, etc.)
opt.signcolumn = "yes"
-- active le retour à la ligne visuel
opt.wrap = true
-- casse les lignes uniquement sur les espaces (évite de couper les mots au milieu)
opt.linebreak = true
-- ajoute une indentation aux lignes cassées
opt.breakindent = true
-- petit symbole pour indiquer qu’une ligne est cassée
opt.showbreak = " ↪ "

-- retour
-- autorise retour arrière même en début de ligne ou sur indentation
opt.backspace = "indent,eol,start"

-- presse papier
-- on utilise le presse papier du système (copier/coller entre Neovim et GNOME)
opt.clipboard = "unnamedplus"

-- split des fenêtres
-- le split vertical d'une fenêtre s'affiche à droite
opt.splitright = true
-- le split horizontal d'une fenêtre s'affiche en bas
opt.splitbelow = true

-- fichiers temporaires
-- supprime les fichiers .swp de Vim
opt.swapfile = false
-- autorise l'undo à l'infini (même quand on revient sur un fichier fermé)
opt.undofile = true

-- mots spéciaux
-- on traite les mots avec des - comme un seul mot
opt.iskeyword:append("-")

-- affichage des caractères invisibles
opt.list = true
opt.listchars:append({ nbsp = "␣", trail = "•", precedes = "«", extends = "»", tab = "> " })

-- interface
-- active la souris partout
opt.mouse = "a"
-- laisse 8 lignes de marge verticale autour du curseur
opt.scrolloff = 8
-- marge horizontale
opt.sidescrolloff = 8

-- sécurité
-- empêche l'exécution de commandes en commentaire ou dangereuse
opt.modelines = 0
