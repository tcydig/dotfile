-- lua/plugins/config/lsp.lua

return {
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- ここに使いたいLSPサーバーを列挙
      local servers = {
        lua_ls = {},
        pyright = {},
        gopls = {},
        ts_ls = {},
        html = {},
        cssls = {},
        jsonls = {},
        tailwindcss = {},
      }

      for server, config in pairs(servers) do
        lspconfig[server].setup(config)
      end
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lspsaga").setup({})
    end,
  },
}
