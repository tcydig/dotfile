-- lua/plugins/config/floaterm.lua

return {
  {
    "voldikss/vim-floaterm",
    cmd = { "FloatermNew", "FloatermToggle", "FloatermKill" },
    keys = {
      { "<F12>", "<cmd>FloatermToggle<CR>", mode = "n", desc = "Toggle Floaterm", noremap = true, silent = true },
      { "<F12>", "<C-\\><C-n><cmd>FloatermToggle<CR>", mode = "t", desc = "Close Floaterm", noremap = true, silent = true },
    },
  },
}
