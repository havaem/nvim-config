if not vim.g.vscode then return {} end -- don't do anything in non-vscode instances
return {
  "ggandor/leap.nvim",
  dependencies = {
    "tpope/vim-repeat",
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["s"] = { "<Plug>(leap-forward)", desc = "Leap forward" },
            ["S"] = { "<Plug>(leap-backward)", desc = "Leap backward" },
            ["gs"] = { "<Plug>(leap-from-window)", desc = "Leap from window" },
          },
          x = {
            ["s"] = { "<Plug>(leap-forward)", desc = "Leap forward" },
            ["S"] = { "<Plug>(leap-backward)", desc = "Leap backward" },
            ["gs"] = { "<Plug>(leap-from-window)", desc = "Leap from window" },
          },
          o = {
            ["s"] = { "<Plug>(leap-forward)", desc = "Leap forward" },
            ["S"] = { "<Plug>(leap-backward)", desc = "Leap backward" },
            ["gs"] = { "<Plug>(leap-from-window)", desc = "Leap from window" },
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
}
