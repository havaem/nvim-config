-- tailwind-tools.lua
return {
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional
    "neovim/nvim-lspconfig", -- optional
  },
  extension = {
    patterns = {
      typescriptreact = { "cn%(([^)]+)%)", "clsx%(([^)]+)%)", "tw%(([^)]+)%)", "tw%`([^`]+)%`" },
      javascript = { "cn%(([^)]+)%)", "clsx%(([^)]+)%)", "tw%(([^)]+)%)", "tw%`([^`]+)%`" },
    },
  },
  opts = {}, -- your configuration
}
