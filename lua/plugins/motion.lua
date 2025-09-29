return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    dependencies = {
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            x = {
              ["s"] = {
                function() require("flash").jump() end,
                desc = "Flash",
              },
              ["R"] = {
                function() require("flash").treesitter_search() end,
                desc = "Treesitter Search",
              },
              ["S"] = {
                function() require("flash").treesitter() end,
                desc = "Flash Treesitter",
              },
            },
            o = {
              ["r"] = {
                function() require("flash").remote() end,
                desc = "Remote Flash",
              },
              ["R"] = {
                function() require("flash").treesitter_search() end,
                desc = "Treesitter Search",
              },
              ["s"] = {
                function() require("flash").jump() end,
                desc = "Flash",
              },
              ["S"] = {
                function() require("flash").treesitter() end,
                desc = "Flash Treesitter",
              },
            },
            n = {
              ["s"] = {
                function() require("flash").jump() end,
                desc = "Flash",
              },
              ["S"] = {
                function() require("flash").treesitter() end,
                desc = "Flash Treesitter",
              },
            },
          },
        },
      },
    },
    opts = {},
  },
  {
    "ggandor/leap.nvim",
    cond = function() return vim.g.vscode end,
    dependencies = {
      "tpope/vim-repeat",
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            n = {
              ["s"] = { "<Plug>(leap-forward)", desc = "Leap" },
            },
            x = {
              ["s"] = { "<Plug>(leap-forward)", desc = "Leap" },
            },
            o = {
              ["s"] = { "<Plug>(leap-forward)", desc = "Leap forward" },
            },
          },
        },
      },
    },
    specs = {
      {
        "catppuccin",
        optional = true,
        ---@type CatppuccinOptions
        opts = { integrations = { leap = true } },
      },
    },
    opts = {},
    config = function()
      if not vim.g.vscode then return {} end -- don't do anything in non-vscode instances
      local leap = require "leap"

      leap.opts.safe_labels = {}
      leap.opts.labels = "asdfghjklqwertyuiopzxcvbnm"

      vim.keymap.set({ "n", "x", "o" }, "s", function()
        local input = vim.fn.getcharstr()
        local targets = {}
        local buf = vim.api.nvim_get_current_buf()
        local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)

        for lnum, line in ipairs(lines) do
          local col = line:find(input, 1, true)
          while col do
            table.insert(targets, { pos = { lnum, col } })
            col = line:find(input, col + 1, true)
          end
        end

        if #targets > 0 then leap.leap { targets = targets } end
      end)
    end,
  },
}
