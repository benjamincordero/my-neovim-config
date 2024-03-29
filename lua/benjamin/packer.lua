-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'junegunn/fzf.vim'
  use 'junegunn/fzf'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      --vim.cmd('colorscheme rose-pine')
    end
  })
  use({
    "EdenEast/nightfox.nvim",
    config = function()
      --require('nightfox').load()
    end
  })
  use  'onsails/lspkind.nvim'
  use({
    'nyoom-engineering/oxocarbon.nvim',
    config = function()
      vim.opt.background = "dark"
      vim.cmd.colorscheme('oxocarbon')
      vim.cmd.colorscheme('carbonfox')
    end
  })
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end, }
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  use('jiangmiao/auto-pairs')
  use("goolord/alpha-nvim")
  use("airblade/vim-gitgutter")
  use("xiyaowong/nvim-transparent")
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")
  use("christoomey/vim-tmux-navigator")
  use("jwalton512/vim-blade")
  use("onecentlin/laravel-blade-snippets-vscode")
  use("onecentlin/laravel5-snippets-vscode")
  use("preservim/nerdcommenter")
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })
  --use('nanozuki/tabby.nvim')
  use('brenoprata10/nvim-highlight-colors')
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })
end)
