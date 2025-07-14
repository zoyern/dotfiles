return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            view = { side = "right" },
            actions = {
                open_file = {
                    quit_on_open = false,
                },
            },
            -- Ouvre le tree au démarrage si pas de fichier spécifié
            hijack_netrw = true,
            sync_root_with_cwd = true,
        })

        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                require("nvim-tree.api").tree.open()
            end,
        })

        vim.keymap.set(
            "n",
            "<leader>e",
            "<cmd>NvimTreeToggle<CR>",
            { desc = "Explorer NvimTree" }
        )
    end,
}
