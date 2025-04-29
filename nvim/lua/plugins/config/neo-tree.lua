return {
  {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim", -- 必須
			"nvim-tree/nvim-web-devicons", -- オプション、ファイルアイコンを表示
			"MunifTanjim/nui.nvim", -- 必須
		},
    keys = {
      { "<leader>e", ":Neotree toggle<CR>", desc = "Toggle File Explorer" },
    },
		config = function()
			require("neo-tree").setup({
				-- 必要に応じて設定を追加
				filesystem = {
					follow_current_file = true, -- 現在開いているファイルに自動フォーカス
					filtered_items = {
						hide_dotfiles = false, -- 隠しファイルを表示
					},
				},
			})
		end,
	}
}