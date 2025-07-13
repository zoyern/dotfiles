return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    -- configuration de treesitter
    treesitter.setup({
      -- activation de la coloration syntaxique
      highlight = {
        enable = true,
      },
      -- activation de l'indentation améliorée
      indent = { enable = true },

      -- langages installés et configurés
      ensure_installed = {
        "bash",
        "c",
		"cpp",
        "c_sharp",
		"make",
		"nginx",
        "cmake",
		"comment",
        "blueprint",
        "dockerfile",
        "gitignore",
		"csv",
		"xml",
		"yaml",
        "html",
		"css",
        "javascript",
		"sql",
		"vue",
        "json",
		"gdshader",
		"git_config",
		"git_rebase",
		"gitattributes",
		"gitcommit",
		"gitignore",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "rst",
        "rust",
        "typescript",
        "vim",
		"arduino",
		"asm",
		"powershell",
        "printf",
		"regex",
		"scss",
		"slint",
		"ssh_config",
		},
      -- lorse de l'appui sur <Ctrl-space> sélectionne le bloc
      -- courant spécifique au langage de programmation
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}

