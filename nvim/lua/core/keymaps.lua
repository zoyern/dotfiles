-- Définir leader
vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Quitter l'insertion avec ;;
keymap("i", ";;", "<ESC>", { desc = "Sortir du mode insertion avec ;;" })

-- Effacer le surlignage de recherche
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Effacer le surlignage de la recherche" })

-- Déplacement de lignes en mode visuel (V)
keymap("v", "<S-Up>", ":m .-2<CR>gv=gv", { desc = "Déplacer la sélection vers le haut" })
keymap("v", "<S-Down>", ":m .+1<CR>gv=gv", { desc = "Déplacer la sélection vers le bas" })

-- Déplacement de lignes en mode visuel bloc (Ctrl-V)
keymap("x", "<S-Up>", ":move '<-2<CR>gv-gv", { desc = "Déplacer la sélection bloc vers le haut" })
keymap("x", "<S-Down>", ":move '>+1<CR>gv-gv", { desc = "Déplacer la sélection bloc vers le bas" })

-- Déplacement entre fenêtres avec Ctrl + flèches
keymap("n", "<C-Left>", "<C-w>h", { desc = "Fenêtre gauche" })
keymap("n", "<C-Down>", "<C-w>j", { desc = "Fenêtre bas" })
keymap("n", "<C-Up>", "<C-w>k", { desc = "Fenêtre haut" })
keymap("n", "<C-Right>", "<C-w>l", { desc = "Fenêtre droite" })

-- Navigation entre buffers avec Shift + flèches
keymap("n", "<S-Left>", ":bprevious<CR>", { desc = "Buffer précédent", noremap = true, silent = true })
keymap("n", "<S-Right>", ":bnext<CR>", { desc = "Buffer suivant", noremap = true, silent = true })

-- Navigation entre onglets avec Alt + flèches
keymap("n", "<A-Left>", "gT", { desc = "Onglet précédent" })
keymap("n", "<A-Right>", "gt", { desc = "Onglet suivant" })

vim.keymap.set("n", "<leader>q", ":bd<CR>", { desc = "Fermer le buffer actif" })
vim.keymap.set("n", "<leader>q!", ":bd!<CR>", { desc = "Fermer le buffer actif" })
