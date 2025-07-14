if not vim.g.vscode then return {} end -- don't do anything in non-vscode instances

-- Set `vim.notify` to VS Code notifications
vim.notify = require("vscode").notify

local enabled = {}
vim.tbl_map(function(plugin) enabled[plugin] = true end, {
  -- core plugins
  "lazy.nvim",
  "AstroNvim",
  "astrocore",
  "astroui",
  "Comment.nvim",
  "nvim-autopairs",
  "nvim-treesitter",
  "nvim-ts-autotag",
  "nvim-treesitter-textobjects",
  "nvim-ts-context-commentstring",
  -- more known working
  "dial.nvim",
  "flash.nvim",
  "flit.nvim",
  "leap.nvim",
  "mini.ai",
  "mini.comment",
  "mini.move",
  "mini.pairs",
  "mini.surround",
  "ts-comments.nvim",
  "vim-easy-align",
  "vim-repeat",
  "vim-sandwich",
  "yanky.nvim",
  -- "matze/vim-move",
  -- feel free to open PRs to add more support!
  "vim-visual-multi",
})
local Config = require "lazy.core.config"
-- disable plugin update checking
Config.options.checker.enabled = false
Config.options.change_detection.enabled = false
-- replace the default `cond`
Config.options.defaults.cond = function(plugin) return enabled[plugin.name] end

---@type LazySpec
return {
  -- add a few keybindings
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      local opt = vim.tbl_get(opts, "options", "opt")
      if opt then opt.cmdheight = nil end
      local maps = assert(opts.mappings)

      -- basic actions
      maps.n["<Leader>q"] = function() require("vscode").action "workbench.action.closeWindow" end
      maps.n["<Leader>w"] = function() require("vscode").action "workbench.action.files.save" end
      maps.n["<Leader>n"] = function() require("vscode").action "welcome.showNewFileEntries" end

      -- splits navigation
      maps.n["|"] = function() require("vscode").action "workbench.action.splitEditor" end
      maps.n["\\"] = function() require("vscode").action "workbench.action.splitEditorDown" end
      maps.n["<C-H>"] = function() require("vscode").action "workbench.action.navigateLeft" end
      maps.n["<C-J>"] = function() require("vscode").action "workbench.action.navigateDown" end
      maps.n["<C-K>"] = function() require("vscode").action "workbench.action.navigateUp" end
      maps.n["<C-L>"] = function() require("vscode").action "workbench.action.navigateRight" end

      -- buffer management
      maps.n["]b"] = "<Cmd>Tabnext<CR>"
      maps.n["[b"] = "<Cmd>Tabprevious<CR>"
      maps.n["<Leader>c"] = "<Cmd>Tabclose<CR>"
      maps.n["<Leader>C"] = "<Cmd>Tabclose!<CR>"
      maps.n["<Leader>bp"] = "<Cmd>Tablast<CR>"
      maps.n["<Leader>bc"] = function() require("vscode").action "workbench.action.closeActiveEditor" end
      maps.n["<Leader>bC"] = function() require("vscode").action "workbench.action.closeAllEditors" end
      maps.n["<Leader>bl"] = function() require("vscode").action "workbench.action.closeEditorsToTheLeft" end
      maps.n["<Leader>bp"] = function() require("vscode").action "workbench.action.previousEditor" end
      maps.n["<Leader>br"] = function() require("vscode").action "workbench.action.closeEditorsToTheRight" end

      -- file explorer
      maps.n["<Leader>e"] = function() require("vscode").action "workbench.files.action.focusFilesExplorer" end
      maps.n["<Leader>o"] = function() require("vscode").action "workbench.files.action.focusFilesExplorer" end

      -- indentation
      maps.v["<Tab>"] = function() require("vscode").action "editor.action.indentLines" end
      maps.v["<S-Tab>"] = function() require("vscode").action "editor.action.outdentLines" end

      -- diagnostics
      maps.n["]d"] = function() require("vscode").action "editor.action.marker.nextInFiles" end
      maps.n["[d"] = function() require("vscode").action "editor.action.marker.prevInFiles" end

      -- pickers (emulate telescope mappings)
      maps.n["<Leader>fc"] = function()
        require("vscode").action("workbench.action.findInFiles", { args = { query = vim.fn.expand "<cword>" } })
      end
      maps.n["<Leader>fC"] = function() require("vscode").action "workbench.action.showCommands" end
      maps.n["<Leader>ff"] = function() require("vscode").action "workbench.action.quickOpen" end
      maps.n["<Leader>fn"] = function() require("vscode").action "notifications.showList" end
      maps.n["<Leader>fo"] = function() require("vscode").action "workbench.action.openRecent" end
      maps.n["<Leader>ft"] = function() require("vscode").action "workbench.action.selectTheme" end
      maps.n["<Leader>fw"] = function() require("vscode").action "workbench.action.findInFiles" end

      -- git client
      maps.n["<Leader>gg"] = function() require("vscode").action "workbench.view.scm" end

      -- LSP Mappings
      maps.n["K"] = function() require("vscode").action "editor.action.showHover" end
      maps.n["gI"] = function() require("vscode").action "editor.action.goToImplementation" end
      maps.n["gd"] = function() require("vscode").action "editor.action.revealDefinition" end
      maps.n["gD"] = function() require("vscode").action "editor.action.revealDeclaration" end
      maps.n["gr"] = function() require("vscode").action "editor.action.goToReferences" end
      maps.n["gy"] = function() require("vscode").action "editor.action.goToTypeDefinition" end
      maps.n["<Leader>la"] = function() require("vscode").action "editor.action.quickFix" end
      maps.n["<Leader>lG"] = function() require("vscode").action "workbench.action.showAllSymbols" end
      maps.n["<Leader>lR"] = function() require("vscode").action "editor.action.goToReferences" end
      maps.n["<Leader>lr"] = function() require("vscode").action "editor.action.rename" end
      maps.n["<Leader>ls"] = function() require("vscode").action "workbench.action.gotoSymbol" end
      maps.n["<Leader>lf"] = function() require("vscode").action "editor.action.formatDocument" end

      -- Line movement
      maps.n["<A-Up>"] = function() require("vscode").action "editor.action.moveLinesUpAction" end
      maps.n["<A-Down>"] = function() require("vscode").action "editor.action.moveLinesDownAction" end
    end,
  },
  -- disable colorscheme setting
  { "AstroNvim/astroui", opts = { colorscheme = false } },
  -- disable treesitter highlighting
  { "nvim-treesitter/nvim-treesitter", opts = { highlight = { enable = false } } },
}
