local flutter_tools = require('flutter')

local M = {}

function M.setup()
  vim.keymap.set("n", "<leader>fN", flutter_tools.open_network_tab)
  vim.keymap.set("n", "<leader>fD", flutter_tools.open_debugger_tab)
end

return M
