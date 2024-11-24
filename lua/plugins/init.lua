return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- Mason is a plugin that manages the installation of language servers
  -- Servernames can be found in: https://github.com/williamboman/mason-lspconfig.nvim 
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua", "html-lsp",
        "css-lsp", "prettier", "clangd", "neocmake",
        "python-language-server", "marksman"
      },
    },
  },

  -- Treesitter is a languate parser so highlighting does not rely on simple regex
  -- Supported languages: https://github.com/nvim-treesitter/nvim-treesitter
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc", "html", "css",
        "c", "cpp", "cmake", "cuda", "python",
        "markdown", "markdown_inline"
  		},
  	},
  },
}
