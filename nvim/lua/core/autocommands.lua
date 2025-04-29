-- lua/core/autocommands.lua

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local mygroup = augroup("MyAutoCmds", { clear = true })

-- 例：ファイル保存時に自動でフォーマットする
-- autocmd("BufWritePre", {
--   group = mygroup,
--   pattern = "*",
--   command = "lua vim.lsp.buf.formatting_sync()"
-- })
autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
