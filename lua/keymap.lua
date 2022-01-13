local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

---------------------------------------------------
-- 快捷键设置
---------------------------------------------------

-- 切换文件树
map('n', '<leader>t', ':NvimTreeToggle<CR>', opt)

-- ctrl+p找文件
map('n', '<c-p>', ':Telescope find_files<CR>', opt)
-- 全局搜索
map('n', '<leader>ff', ':Telescope grep_string<CR>', opt)

-- 切换标签栏
map('n', '<c-h>', '<esc>:BufferLineCyclePrev<CR>', opt)
map('n', '<c-l>', '<esc>:BufferLineCycleNext<CR>', opt)
-- 删除标签栏
map('n', 'W<right>', '<esc>:BufferLineCloseRight<CR>', opt)
map('n', 'W<left>', '<esc>:BufferLineCloseLeft<CR>', opt)

-- 保存
map('n', '<c-s>', ':w<CR>', opt)

-- 强制退出
map('n', '<leader>q', ':q!<CR>', opt)

-- 打开终端
map('n', '<c-k><c-j>', '<cmd>lua require"FTerm".toggle()<CR>', opt)

-- 复制当前行
map('n', '<leader><down>', 'yyp', { noremap = false })

-- 切换注释
map('n', '<leader>/', 'gcc', { noremap = false })
map('n', '<c-c><c-c>', 'gcc', { noremap = false })
map('v', '<leader>/', 'gcc<esc>', { noremap = false })
map('v', '<leader>?', 'gbc<esc>', { noremap = false })

-- 格式化
map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)

-- git
-- 切换行内git注释
map('n', '<c-g><c-b>', ':Gitsigns toggle_current_line_blame<cr>', opt)

