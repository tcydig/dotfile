-- plugins/nvim-web-devicons.lua（または plugins/init.lua に追加）
return {
    {
  "nvim-tree/nvim-web-devicons",
  lazy = false, -- ← 🔥 これが重要
  config = function()
    require("nvim-web-devicons").setup()
  end,
}
}