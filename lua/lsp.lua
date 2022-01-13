-- LSP设置
-- 配置加载映射文件
local imfile = 'import_map.json'
local denoOptions = {
  enable = true,
  lint = true,
}

if vim.fn.empty(vim.fn.glob(imfile)) == 0 then
  denoOptions.importMap = imfile
end

local mapOpts = { noremap = true, silent = true }

-- 通用键盘映射
function maplsp(map)
  map('n', '<leader>.', '<cmd>lua vim.lsp.buf.code_action()<CR>', mapOpts)
  map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', mapOpts)
  map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', mapOpts)
  map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', mapOpts)
  -- 保存时格式化
  map('n', '<c-s>', '<cmd>lua vim.lsp.buf.formatting()<CR>:w<cr>', mapOpts)
end

require "lspconfig".denols.setup {
  init_options = denoOptions,
  on_attach = function(c, bufnr)
    local function mapfn(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    maplsp(mapfn)
  end
}

