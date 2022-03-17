local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

---------------------------------------------------
-- 快捷键设置
---------------------------------------------------

-- 跳10行
map('n', '<c-d>', '5j', opt)
map('n', '<c-u>', '5k', opt)

-- 切换文件树
map('n', '<leader>t', '<cmd>NvimTreeToggle<CR>', opt)

-- telescope主面板
map('n', '<c-k><c-t>', '<cmd>Telescope<CR>', opt)
-- ctrl+p找文件
map('n', '<c-p>', '<cmd>Telescope find_files<CR>', opt)
-- 全局搜索
map('n', '<leader>ff', '<cmd>Telescope live_grep<CR>', opt)

-- 切换标签栏
map('n', '<c-h>', '<cmd>BufferLineCyclePrev<CR>', opt)
map('n', '<c-l>', '<cmd>BufferLineCycleNext<CR>', opt)
-- 删除标签栏
map('n', 'W<right>', '<cmd>BufferLineCloseRight<CR>', opt)
map('n', 'W<left>', '<cmd>BufferLineCloseLeft<CR>', opt)

-- 强制保存并退出
map('n', '<leader>w', '<cmd>wq!<CR>', opt)

-- 复制到系统剪贴板
map('v', '<leader>y', ':OSCYank<CR>', opt)

-- 保存
map('n', '<c-s>', '<cmd>w<CR>', opt)
map('n', '<leader>s', '<cmd>w<CR>', opt)

-- 强制退出
map('n', '<leader>q', '<cmd>q!<CR>', opt)

-- 打开终端
map('n', '<c-k><c-j>', '<cmd>lua require"FTerm".toggle()<CR>', opt)
map('t', '<c-k><c-j>', '<cmd>lua require"FTerm".toggle()<CR>', opt)

-- 复制当前行
map('n', '<leader><down>', 'yyp', { noremap = false })

-- 切换注释
map('n', '<leader>/', 'gcc', { noremap = false })
map('n', '<c-c><c-c>', 'gcc', { noremap = false })
map('v', '<leader>/', 'gcc<esc>', { noremap = false })
map('v', '<leader>?', 'gbc<esc>', { noremap = false })

-- 格式化
map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)

-- 切换问题面板
map('n', '<leader>y', '<cmd>TroubleToggle<CR>', opt)

-- git
map('n', '<c-g><c-g>', '<cmd>Neogit<CR>', opt)

-- 切换行内git注释
map('n', '<c-g><c-b>', '<cmd>Gitsigns toggle_current_line_blame<cr>', opt)
-- 暂存当前文件
map('n', '<c-g><c-s>', '<cmd>Gitsigns stage_buffer<cr>', opt)
