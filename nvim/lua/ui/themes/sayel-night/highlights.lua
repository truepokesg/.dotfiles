-- lua/ui/themes/sayel-night/highlights.lua
local M = {}

function M.setup(p)
  return {
    Normal       = { fg = p.fg, bg = "NONE"},
    Cursor       = { fg = p.cursor_text, bg = p.cursor },
    Visual       = { bg = p.selection_bg, fg = p.selection_fg },
    LineNr       = { fg = p.bright_white},
    CursorLineNr = { fg = p.bright_yellow, bold = true },
    Comment      = { fg = p.bright_black, italic = true },
    Constant     = { fg = p.green },
    String       = { fg = p.bright_green },
    Function     = { fg = p.bright_magenta },
    Keyword      = { fg = p.magenta, bold = true },
    Identifier   = { fg = p.white },
    Type         = { fg = p.yellow },
    Statement    = { fg = p.magenta },
    Operator     = { fg = p.bright_cyan },
    Todo         = { fg = p.yellow, bold = true },
    Error        = { fg = p.bright_red, bg = p.bg, bold = true },
    Pmenu        = { fg = p.fg, bg = p.selection_bg },
    PmenuSel     = { fg = p.selection_fg, bg = p.selection_bg },
    VertSplit    = { fg = p.bright_black },
    StatusLine   = { fg = p.bright_white, bg = p.bright_black },
    Search       = { fg = p.bg, bg = p.bright_yellow, bold = true },
  }
end

return M

