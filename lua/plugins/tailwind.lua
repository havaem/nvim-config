return {
  { import = "astrocommunity.pack.html-css" },
  {
    "mason-org/mason-lspconfig.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "tailwindcss" })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed =
        require("astrocore").list_insert_unique(opts.ensure_installed, { "tailwindcss-language-server" })
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    optional = true,
    opts = {
      user_default_options = {
        names = true,
        tailwind = true,
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      config = {
        tailwindcss = {
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  typescriptreact = {
                    "cn%(([^)]+)%)",
                    "clsx%(([^)]+)%)",
                    "tw%(([^)]+)%)",
                    "tw%`([^`]+)%`",
                    "cva%(([^)]+)%)",
                  },
                  javascript = {
                    "cn%(([^)]+)%)",
                    "clsx%(([^)]+)%)",
                    "tw%(([^)]+)%)",
                    "tw%`([^`]+)%`",
                    "cva%(([^)]+)%)",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
}
