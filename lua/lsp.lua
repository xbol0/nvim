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
require "lspconfig".denols.setup {
  init_options = denoOptions,
}

