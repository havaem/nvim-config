local M = {}

M.templates = {
  -- JavaScript / TypeScript family
  javascript = "console.log('%s:', %s);",
  typescript = "console.log('%s:', %s);",
  javascriptreact = "console.log('%s:', %s);",
  typescriptreact = "console.log('%s:', %s);",
  vue = "console.log('%s:', %s);",
  svelte = "console.log('%s:', %s);",

  python = "print(f'%s: {%s}')",
  lua = "print('%s:', vim.inspect(%s))",
  go = 'fmt.Printf("%s: %%+v\\n", %s)',
  rust = 'println!("%s: {:?}", %s);',
  php = "var_dump(%s);",
  cpp = 'std::cout << "%s: " << %s << std::endl;',
}

local function get_visual_selection()
  local saved_reg = vim.fn.getreg "v"
  local saved_regtype = vim.fn.getregtype "v"

  vim.cmd 'normal! "vy'
  local selection = vim.fn.getreg "v"

  vim.fn.setreg("v", saved_reg, saved_regtype)
  return vim.trim(selection)
end

function M.log_variable()
  local ft = vim.bo.filetype
  local template = M.templates[ft]

  if not template then
    vim.notify("[SUPER_LOG] Config is not exist for : '" .. ft .. "'", vim.log.levels.WARN)
    return
  end

  local var_name = ""
  local mode = vim.api.nvim_get_mode().mode

  if mode:sub(1, 1) == "v" or mode:sub(1, 1) == "V" or mode == "\22" then
    var_name = get_visual_selection()
  else
    var_name = vim.fn.expand "<cword>"
  end

  if var_name == "" then return end

  local log_stmt = ""
  if type(template) == "function" then
    log_stmt = template(var_name)
  else
    log_stmt = string.format(template, var_name, var_name)
  end

  vim.api.nvim_put({ log_stmt }, "l", true, true)
end

return M
