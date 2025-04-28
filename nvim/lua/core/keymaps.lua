-- lua/core/keymaps.lua

local map = vim.keymap.set

-- 例：基本キーマッピング（必要に応じてどんどん追加できる）
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle Explorer" })
map("n", "<leader>w", ":w<CR>", { desc = "Save File" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- Insertモードでも使える設定例（必要なら）
-- map("i", "jk", "<ESC>", { desc = "Escape Insert Mode" })
