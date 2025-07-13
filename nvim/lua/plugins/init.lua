local themes_list = require("themes")
local plugins = {
	"nvim-lua/plenary.nvim",
}
-- Ajoute les configurations des thèmes à la liste des plugins
for _, theme in ipairs(themes_list) do
	table.insert(plugins, theme)
end
return plugins
