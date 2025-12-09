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
    end,
  },
}
