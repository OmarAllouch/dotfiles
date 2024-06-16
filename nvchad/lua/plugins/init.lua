return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "efm",
        "bashls",
        "tsserver",
        "pyright",
        "html",
        "cssls",
        "lua_ls",
        "emmet_ls",
        "jsonls",
      },
      automatic_installation = true,
    },
    event = "BufReadPre",
    dependencies = "williamboman/mason.nvim",
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    event = "BufReadPre",
    config = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "machakann/vim-highlightedyank",
    lazy = false,
  },
  {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
      require("illuminate").configure {}
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
