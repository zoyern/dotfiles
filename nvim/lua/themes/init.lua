local themes_configs = {
  catppuccin = require("themes.catppuccin"),
  tokyonight = require("themes.tokyonight"),
  -- Ajoute d'autres thèmes ici
}

local default_theme = "catppuccin"  -- Thème par défaut

-- Charger le thème par défaut
local function load_default_theme()
  if themes_configs[default_theme] then
    local status_ok, _ = pcall(vim.cmd.colorscheme, default_theme)
    if not status_ok then
      print("Le thème " .. default_theme .. " n'est pas disponible.")
    end
  end
end


load_default_theme()

-- Créer une commande pour changer de thème
vim.api.nvim_create_user_command('Theme', function(opts)
  local theme_name = opts.args
  if themes_configs[theme_name] then
    vim.cmd.colorscheme(theme_name)
  else
    print("Thème non reconnu : " .. theme_name)
  end
end, { nargs = 1 })

-- Retourne la liste des configurations de thèmes pour l'importation dans `plugins/init.lua`
local themes_list = {}
for name, config in pairs(themes_configs) do
  table.insert(themes_list, config)
end
return themes_list
