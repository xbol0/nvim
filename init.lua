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
  -- 管理插件的玩意
  "savq/paq-nvim",
  -- 一些依赖
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  -- 左边的树
  "kyazdani42/nvim-tree.lua",
  -- 上面那一条东西
  "akinsho/nvim-bufferline.lua",
  "nvim-treesitter/nvim-treesitter",
  -- 老色批配置
  "neovim/nvim-lspconfig",
  -- 干活的宝贝
  "github/copilot.vim",
  -- 一个万能的弹窗
  "nvim-telescope/telescope.nvim",
  -- 颜色主题
  "savq/melange",
  -- 终端
  "numToStr/FTerm.nvim",
  -- 自动补全括号
  "windwp/nvim-autopairs",
  -- 注释
  "numToStr/Comment.nvim",
  -- 下面那一条东西
  "nvim-lualine/lualine.nvim",
  -- git辅助工具
  "lewis6991/gitsigns.nvim",
  -- 快捷键提示工具
  "folke/which-key.nvim",
  -- 问题面板
  "folke/trouble.nvim",
  -- git操作面板
  "TimUntersberger/neogit",

  -- 自动补全工具，下面那一坨都是
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

