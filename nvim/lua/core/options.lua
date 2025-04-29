-- lua/core/options.lua

local opt = vim.opt
local g = vim.g

-- 基本設定
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.inccommand = "split"
opt.cursorline = true
opt.scrolloff = 10
opt.confirm = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.smartindent = true
opt.splitkeep = "cursor"
opt.path:append({ "**" })
opt.wildignore:append({ "*/node_modules/*" })
opt.fileencoding = "utf-8"

-- Undercurl（ターミナル下線サポート）
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- リーダーキー設定
g.mapleader = " "
g.maplocalleader = " "
g.have_nerd_font = false
