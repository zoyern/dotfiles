return {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = { { "<leader>t", "<cmd>ToggleTerm<CR>", desc = "Toggle Terminal" } },
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<leader>t]],
            direction = "horizontal",
            shell = vim.o.shell,
        })
    end,
}
