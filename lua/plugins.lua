---------------------------------------------------
-- 插件设置
---------------------------------------------------

-- nvim-tree
require'nvim-tree'.setup {
  -- 关闭文件时自动关闭
   auto_close = true,
  -- 不显示 git 状态图标
  git = {
    enable = false
  }
}

-- nvim-web-devicons
require "nvim-web-devicons".setup {
  default = true;
}

-- bufferline
require "bufferline".setup {
  options = {
    diagnostics = "nvim_lsp",

    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left"
    }}
  }
}

-- nvim-treesitter
require "nvim-treesitter.configs".setup {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "json"
  },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
}

-- telescope
require "telescope".setup {}

-- fterm
require "FTerm".setup {
  cmd = { os.getenv("SHELL"), "-l" },
  border = "double"
}

-- nvim-autopairs
require "nvim-autopairs".setup {}

-- Comment
require "Comment".setup {}

-- lualine
require "lualine".setup {}

-- gitsigns
require "gitsigns".setup {}

-- which-key
require "which-key".setup {}

-- nvim-cmp
local cmp = require "cmp"
cmp.setup {
  snippet = {
    expand = function(args) 
      vim.fn["vsnip#anonymous"](args.body)
    end
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "vsnip" },
  }, {
    name = "buffer",
  }),
  mapping = {
    ['c-k'] = cmp.mapping.select_prev_item(),
    ['c-j'] = cmp.mapping.select_next_item(),
    ['<cr>'] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace,
    }),
  }
}

cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer" }
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

