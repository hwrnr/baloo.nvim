local M = {}
function M.performSearch(query)
  -- print(getcwd())
  local cwd = vim.fn.getcwd()
  local command = "baloosearch -d '" .. cwd .. "' '" .. query .. "'"
  local handle = io.popen(command)
  local result = handle:read("*a")
  handle:close()
  print(result)
end

return M
