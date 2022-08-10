local M = {}
function M.performSearch(query)
  -- print(getcwd())
  local cwd = vim.fn.getcwd()
  local command = "baloosearch -d '" .. cwd .. "' '" .. query .. "' 2>/dev/null"
  local handle = io.popen(command)
  local result = handle:read("*a")
  handle:close()
  local lines = vim.split(result, "\n")
  table.remove(lines, #lines) -- Last one is empty string. There is probably a better way to do this.
  for index, value in ipairs(lines) do
    print(index, value)
  end
end

return M
