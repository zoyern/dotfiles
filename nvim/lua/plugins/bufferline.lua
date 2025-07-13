return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			separator_style = "slant",
			offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
			get_element_icon = function(buf)
				local icons = require('nvim-web-devicons')
				local icon, _ = icons.get_icon_by_filetype(buf.filetype, { default = false })
				return icon
			end, -- Remplace show_buffer_default_icon
		},
	},
}
