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
	-- { import = "plugins.config.nvim-tree" },
	-- { import = "plugins.config.avante" },
	-- { import = "plugins.config.copilot" },
	{ import = "plugins.config.telescope" },
	{ import = "plugins.config.which-key" },
	{ import = "plugins.config.vim-sleuth" },
	{ import = "plugins.config.nvim-web-devicons" },
	{ import = "plugins.config.neo-tree" },
	{ import = "plugins.config.gitsigns" },
	{ import = "plugins.config.lazydev" },
	{ import = "plugins.config.luvit-meta" },
	{ import = "plugins.config.lspsaga" },
	{ import = "plugins.config.conform" },
	-- { import = "plugins.config.devicons" },
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
