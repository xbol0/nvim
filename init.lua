-- Copyright (c) 2021-2022, Orzv Boloto. All rights reserved.
-- AGPLv3 license.
-- User: Orzv
-- Email: orzv@outlook.com

require "basic"
require "keymap"

-- 自动安装包管理器
local install_path = vim.fn.stdpath "data" .. 
  "/site/pack/paqs/start/paq-nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone --depth=1 https://github.com/savq/paq-nvim ' .. 
  install_path)
end

-- 设置主题
vim.cmd("colorscheme melange")

---------------------------------------------------
-- 插件管理
---------------------------------------------------

require "paq" {
  "savq/paq-nvim",
  "kyazdani42/nvim-web-devicons",
  "kyazdani42/nvim-tree.lua",
  "akinsho/nvim-bufferline.lua",
  "nvim-treesitter/nvim-treesitter",
  "neovim/nvim-lspconfig",
  "github/copilot.vim",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  "savq/melange",
  "numToStr/FTerm.nvim",
  "windwp/nvim-autopairs",
  "numToStr/Comment.nvim",
  "nvim-lualine/lualine.nvim",
  "lewis6991/gitsigns.nvim",
  "folke/which-key.nvim",

  -- cmp
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",
}

require "plugins"
require "lsp"

