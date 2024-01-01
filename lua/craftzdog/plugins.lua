local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use {
  --   'svrana/neosolarized.nvim',
  --   requires = { 'tjdevries/colorbuddy.nvim' }
  -- }
  -- use 'nvim-lualine/lualine.nvim'       -- Statusline
  use 'nvim-lua/plenary.nvim'           -- Common utilities
  use 'onsails/lspkind-nvim'            -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                -- Completion
  use 'neovim/nvim-lspconfig'           -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use('MunifTanjim/prettier.nvim')
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use { 'marko-cerovac/material.nvim', tag = "*", config = function()
    local material = require 'material'
    local colors = require 'material.colors'
    material.setup({
      custom_highlights = {
        YourHighlightGroup = {
          bg = "#000000"
        }
      },

      custom_colors = function(colors)
        colors.editor.bg = "#000000"
      end
    })
  end }

  -- use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
  -- require('git-conflict').setup()
  -- end }

  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<C-\>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = '1',
      start_in_insert = true,
      persist_size = true,
      direction = 'horizontal'
    })
  end }

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  -- use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'tpope/vim-commentary'
  use 'mxw/vim-jsx'
  use 'suy/vim-context-commentstring'
  -- use { 'numToStr/Comment.nvim',
  --   requires = {
  --     'JoosepAlviste/nvim-ts-context-commentstring'
  --   }
  -- }
  -- use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'
  -- use 'ap/vim-css-color'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use "mhinz/vim-startify"
  use 'terryma/vim-multiple-cursors'
  -- use 't184256/vim-boring'
  -- use 'LuRsT/austere.vim'
  -- use 'zaki/zazen'
  -- use 'ryanpcmcquen/true-monochrome_vim'
  -- use 'jaredgorski/Mies.vim'
  -- use 'jaredgorski/fogbell.vim'
  -- use 'aditya-azad/candle-grey'
  -- use 'andreasvc/vim-256noir'
  -- use 'owickstrom/vim-colors-paramount'
  -- use 'fxn/vim-monochrome'
  use { "pbrisbin/vim-colors-off" }
  -- use 'danishprakash/vim-yami'
  -- use 'nyoom-engineering/oxocarbon.nvim'
  -- use 'Jorengarenar/vim-darkness'
end)
