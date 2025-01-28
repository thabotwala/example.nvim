--basic lua scripting
local M = {}

function M.hello_world()
  print("Hello, Wolrd!")
end

--Map a command
vim.api.nvim_command('command! HelloWorld lua require("example").hello_world()')

return M;
