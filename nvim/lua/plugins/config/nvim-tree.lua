-- lua/plugins/config/nvim-tree.lua

return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle File Explorer" },
    },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 30,
        },
        git = {
          enable = true,
        },
      })
    end,
  },
}
