-----------------------------------------------------------
-- Global UI Highlight Overrides
-----------------------------------------------------------

local M = {}

function M.apply()
    -- Optional builtin package: disables search highlight automatically
    vim.cmd('packadd! nohlsearch')

    -----------------------------------------------------------
    -- Transparent Background (Ghostty, Kitty, Alacritty etc.)
    -----------------------------------------------------------
    vim.cmd [[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight SignColumn guibg=NONE ctermbg=NONE
    highlight VertSplit guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
  ]]

    -----------------------------------------------------------
    -- Clear built-in StatusLine so lualine controls everything
    -----------------------------------------------------------
    vim.cmd("hi clear StatusLine")
    vim.cmd("hi clear StatusLineNC")
end

return M
