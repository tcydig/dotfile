-- lua/plugins/config/copilot.lua

return {
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true, -- 文字を打つと自動で提案する
        debounce = 75,
        keymap = {
          accept = "<M-l>",    -- Alt+l で提案を受け入れ
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
        help = true,
        gitcommit = true,
        gitrebase = true,
        svn = true,
        cvs = true,
        ["."] = false,
      },
      copilot_node_command = "node", -- node.js の実行コマンド
      server_opts_overrides = {},
    },
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<Tab>", -- Tab で提案を受け入れる
          },
        },
      })
    end,
  },
}
