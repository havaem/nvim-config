---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  ----------------------------------LSP SUPPORT------------------------------
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.oxlint" },
  { import = "astrocommunity.pack.biome" },

  -----------------------------------AI SUPPORT------------------------------
  { import = "astrocommunity.completion.copilot-lua" },
  ------------------------------EDITING SUPPORT------------------------------
  -- move code with alt h - j - k - l
  { import = "astrocommunity.editing-support.vim-move" },
  -- show the history of the file
  { import = "astrocommunity.editing-support.undotree" },
  -- multi cursor support
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.editing-support.bigfile-nvim" },
  -- smart select like alt+shift+arrow in vscode
  { import = "astrocommunity.editing-support.wildfire-nvim" },
  -- edit bigfile faster
  { import = "astrocommunity.editing-support.bigfile-nvim" },

  ------------------------------UI SUPPORT------------------------------
  -- theme
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- bottom bar
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  -- Git blame
  { import = "astrocommunity.git.git-blame-nvim" },
  -- show only in current line
  { import = "astrocommunity.recipes.diagnostic-virtual-lines-current-line" },
  -- minimap
  { import = "astrocommunity.split-and-window.neominimap-nvim" },

  ------------------------------EDITOR SUPPORT------------------------------
  -- auto restore session
  { import = "astrocommunity.recipes.auto-session-restore" },
  -- fast surround
  { import = "astrocommunity.motion.nvim-surround" },
  -- git diffview
  { import = "astrocommunity.git.diffview-nvim" },
  -- terminal
  { import = "astrocommunity.terminal-integration.toggleterm-manager-nvim" },
  -- mouse hover support
  -- { import = "astrocommunity.utility.hover-nvim" },
  -- show suggest under the current line
  -- { import = "astrocommunity.workflow.precognition-nvim" },
  -- Clarify and beautify your comments using boxes and lines.
  { import = "astrocommunity.editing-support.comment-box-nvim" },
}
