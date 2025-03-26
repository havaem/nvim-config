if not vim.g.vscode then return {} end

local enabled = {}
vim.tbl_map(function(plugin) enabled[plugin] = true end, {})

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
      local maps = assert(opts.mappings)

      -- Leader b
      maps.n["<Leader>bc>"] = function() require("vscode-neovim").action "workbench.action.closeActiveEditor" end
      maps.n["<Leader>bc"] = function() require("vscode-neovim").action "workbench.action.closeActiveEditor" end
      maps.n["<Leader>bC"] = function() require("vscode-neovim").action "workbench.action.closeAllEditors" end
      maps.n["<Leader>bl"] = function() require("vscode-neovim").action "workbench.action.closeEditorsToTheLeft" end
      maps.n["<Leader>bp"] = function() require("vscode-neovim").action "workbench.action.previousEditor" end
      maps.n["<Leader>br"] = function() require("vscode-neovim").action "workbench.action.closeEditorsToTheRight" end
      maps.n["<Leader>bC>"] = function() require("vscode-neovim").action "workbench.action.closeAllEditors" end
    end,
  },
}
