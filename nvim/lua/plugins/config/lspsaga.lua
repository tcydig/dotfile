return {
  {
    "nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({
				vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts),
				vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts),
				vim.keymap.set("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts),
				vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts),
				vim.keymap.set("n", "gp", "<Cmd>Lspsaga preview_definition<CR>", opts),
				vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts),
				vim.keymap.set("n", "fd", "<Cmd>Lspsaga finder tyd+ref+imp+def<CR>"),
			})
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- optional
			"nvim-tree/nvim-web-devicons", -- optional
		},
  }
}