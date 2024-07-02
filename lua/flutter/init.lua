local flutter_tools = require('flutter-tools.dev_tools')
local utils = require('flutter-tools.utils')

local M = {}

function M.open_network_tab()
  local dev_tools_profiler_url = flutter_tools.get_profiler_url()
  if not dev_tools_profiler_url then
    vim.notify_once('No profiler url found', vim.log.levels.ERROR, { title = 'n1h41', timeout = 5000, icon = "" })
    return
  end
  local url = string.sub(dev_tools_profiler_url, 1, 22) .. 'network' .. string.sub(dev_tools_profiler_url, 23)
  local open_command = utils.open_command()
  vim.fn.jobstart({ open_command, url }, { detach = true })
end

function M.open_debugger_tab()
  local dev_tools_profiler_url = flutter_tools.get_profiler_url()
  if not dev_tools_profiler_url then
    vim.notify_once('No profiler url found', vim.log.levels.ERROR, { title = 'n1h41', timeout = 5000, icon = "" })
    return
  end
  local url = string.sub(dev_tools_profiler_url, 1, 22) .. 'debugger' .. string.sub(dev_tools_profiler_url, 23)
  local open_command = utils.open_command()
  vim.fn.jobstart({ open_command, url }, { detach = true })
end

return M
