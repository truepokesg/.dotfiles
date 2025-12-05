-- lua/ui/themes/sayel-night/config.lua
local colors = require("ui.themes.sayel-night.colours").palette
local highlights = require("ui.themes.sayel-night.highlights").setup(colors)

local M = {}

function M.apply()
  -- Clear existing highlights
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"  -- or "dark" for dark version
  vim.g.colors_name = "sayel-night"

  -- Apply highlights
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M

