local map = vim.keymap.set
local merge = require("utils").merge

local defaultOptions = { noremap = true, silent = true }
-- editor
map(
  "n",
  "<Leader>r",
  function() require("astrocore").reload() end,
  merge(defaultOptions, { desc = "Reload AstroCore" })
)

-- buffer
map({ "n", "i" }, "<C-t>", "<C-o>", { remap = true })
map(
  "n",
  "<A-1>",
  function() require("astrocore.buffer").nav_to(1) end,
  merge(defaultOptions, { desc = "Switch to tab 9" })
)
map(
  "n",
  "<A-2>",
  function() require("astrocore.buffer").nav_to(2) end,
  merge(defaultOptions, { desc = "Switch to tab 9" })
)
map(
  "n",
  "<A-3>",
  function() require("astrocore.buffer").nav_to(3) end,
  merge(defaultOptions, { desc = "Switch to tab 9" })
)
map(
  "n",
  "<A-4>",
  function() require("astrocore.buffer").nav_to(4) end,
  merge(defaultOptions, { desc = "Switch to tab 9" })
)
map(
  "n",
  "<A-5>",
  function() require("astrocore.buffer").nav_to(5) end,
  merge(defaultOptions, { desc = "Switch to tab 9" })
)
map(
  "n",
  "<A-6>",
  function() require("astrocore.buffer").nav_to(6) end,
  merge(defaultOptions, { desc = "Switch to tab 9" })
)
map(
  "n",
  "<A-7>",
  function() require("astrocore.buffer").nav_to(7) end,
  merge(defaultOptions, { desc = "Switch to tab 9" })
)
map(
  "n",
  "<A-8>",
  function() require("astrocore.buffer").nav_to(8) end,
  merge(defaultOptions, { desc = "Switch to tab 9" })
)
map(
  "n",
  "<A-9>",
  function() require("astrocore.buffer").nav_to(9) end,
  merge(defaultOptions, { desc = "Switch to tab 9" })
)
map(
  "n",
  "<A-0>",
  function() require("astrocore.buffer").nav_to(#vim.api.nvim_list_bufs()) end,
  { desc = "Switch to last buffer" }
)

-- variable
map("n", "<F2>", function() vim.lsp.buf.rename() end, merge(defaultOptions, { desc = "Rename a variable" }))

-- remove not cut
map("v", "p", '"_dP', defaultOptions)
map("n", "d", '"_d', defaultOptions)
map("n", "D", '"_D', defaultOptions)
map("n", "x", '"_x', defaultOptions)
map("n", "X", '"_X', defaultOptions)
map("n", "c", '"_c', defaultOptions)
map("n", "C", '"_C', defaultOptions)
map("v", "d", '"_d', defaultOptions)
map("v", "x", '"_x', defaultOptions)
map("v", "c", '"_c', defaultOptions)

-- motion
map("n", "<Tab>", function() vim.cmd ":+10" end, merge(defaultOptions, { desc = "Move 10 lines down" }))
map("n", "<S-Tab>", function()
  local needMove = vim.fn.line "." - 10
  if needMove < 1 then needMove = 1 end
  vim.cmd(":" .. needMove)
end, merge(defaultOptions, { desc = "Move 10 lines up" }))

map("i", "<C-b>", "<Home>", merge(defaultOptions, { desc = "Move to beginning of line" }))
map("i", "<C-e>", "<End>", merge(defaultOptions, { desc = "Move to end of line" }))
map("i", "<C-h>", "<Left>", merge(defaultOptions, { desc = "Move left" }))
map("i", "<C-l>", "<Right>", merge(defaultOptions, { desc = "Move right" }))
map("i", "<C-j>", "<Down>", merge(defaultOptions, { desc = "Move down" }))
map("i", "<C-k>", "<Up>", merge(defaultOptions, { desc = "Move up" }))

--terminal
map("t", "<A-q>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
map({ "n", "t" }, "<F8>", function()
  local toggleterm = require "toggleterm.terminal"
  -- length of terminal
  local terminalList = toggleterm.get_all() or 0
  local terminalCount = #terminalList + 1
  vim.cmd(":" .. terminalCount .. "ToggleTerm")
end, defaultOptions)

if vim.g.vscode then
  local vscode = require "vscode"
  map(
    { "n", "x", "i", "v" },
    "<C-d>",
    function()
      vscode.with_insert(function() vscode.action "editor.action.addSelectionToNextFindMatch" end)
    end,
    merge(defaultOptions, {
      desc = "VSCode intergration",
    })
  )
end
-- ctrl key map
map("n", "<C-a>", "ggVG", merge(defaultOptions, { desc = "Select all text" }))
