-- lua/ui/theme.lua
local M = {}

function M.load(name)
  local ok, theme = pcall(require, "ui.themes." .. name .. ".config")
  if not ok then
    vim.notify("Theme '" .. name .. "' not found!", vim.log.levels.ERROR)
    return
  end
  theme.apply()
end

return M

