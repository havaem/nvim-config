--- Merges two tables into a new table.
---@param t1 vim.keymap.set.Opts: The first table
---@param t2 vim.keymap.set.Opts: The second table
-- @return table: A new table containing all keys and values from t1 and t2
local function merge(t1, t2)
  local result = {}
  for k, v in pairs(t1) do
    result[k] = v
  end
  for k, v in pairs(t2) do
    result[k] = v
  end
  return result
end

return {
  merge = merge,
}
