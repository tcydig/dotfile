-- lua/plugins/avante.lua

return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    lazy = false,
    build = "make",
    opts = {
      provider = "copilot", -- 使用するプロバイダーを指定
      auto_suggestions_provider = "copilot",
      behaviour = {
        auto_suggestions = true,
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        auto_apply_diff_after_generation = true,
        support_paste_from_clipboard = true,
      },
      windows = {
        position = "right",
        width = 30,
        sidebar_header = {
            align = "center",
            rounded = false,
        },
        ask = {
            floating = true,
            start_insert = true,
            border = "rounded"
        }
      },
      copilot = {
        model = "gpt-4o-2024-05-13",
        -- model = "gpt-4o-mini",
        max_tokens = 4096,
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      -- {
      --   "MeanderingProgrammer/render-markdown.nvim",
      --   opts = {
      --     file_types = { "markdown", "Avante" },
      --   },
      --   ft = { "markdown", "Avante" },
      -- },
    },
  },
}
