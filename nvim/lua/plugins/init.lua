-- lua/plugins/init.lua

-- lazy.nvim をロード or ブートストラップ
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- 安定版
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- lazy.nvimを使ってプラグインをセットアップ
require("lazy").setup({
  { import = "plugins.config.lsp" },
  { import = "plugins.config.cmp" },
  { import = "plugins.config.colorscheme" },
  { import = "plugins.config.treesitter" },
  { import = "plugins.config.lualine" },
  { import = "plugins.config.floaterm" },
  { import = "plugins.config.mini" },
  { import = "plugins.config.autopairs" },
  { import = "plugins.config.todo-comments" },
  { import = "plugins.config.nvim-tree" },
})

