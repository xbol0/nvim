vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- 滚动
vim.o.scrolloff = 6
vim.o.sidescrolloff = 6

-- 行号
vim.wo.number = true
vim.wo.cursorline = true
vim.wo.signcolumn = "yes"
vim.wo.colorcolumn = "80"

-- 缩进
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- 搜索
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.showmode = false
vim.o.cmdheight = 1

-- 自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.hidden = true

-- 鼠标支持
vim.o.mouse = "a"
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.updatetime = 300
vim.o.timeoutlen = 300
vim.o.splitbelow = true
vim.o.splitright = true
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- 样式
vim.o.background = "light"
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 补全增强
vim.o.wildmenu = true
vim.o.shortmess = vim.o.shortmess .. 'atI'
vim.o.pumheight = 10
vim.o.showtabline = 2

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})

-- 设置缩进
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

-- 不自动折叠
vim.o.foldlevelstart = 99
