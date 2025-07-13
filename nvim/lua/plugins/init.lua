local themes_list = require("themes")
local plugins = {
	{
		"nvim-tree/nvim-web-devicons", -- Assurez-vous que ce plugin est chargé
		config = function()
			require("nvim-web-devicons").setup({
				default = true, -- Utiliser les icônes par défaut
			})
		end,
	},
	"nvim-lua/plenary.nvim",
}
-- Ajoute les configurations des thèmes à la liste des plugins
for _, theme in ipairs(themes_list) do
	table.insert(plugins, theme)
end
return plugins
