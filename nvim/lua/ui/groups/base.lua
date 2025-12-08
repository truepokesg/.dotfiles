-- lua/ui/groups/base.lua
local M = {}

M.get = function(p, is_transparent)
    -- LOGIC: If transparent=true (from theme meta), use "NONE".
    -- Otherwise, use the theme's background color.
    local bg_main = is_transparent and "NONE" or p.bg

    return {
        -- 1. EDITOR CANVAS
        Normal       = { fg = p.fg, bg = bg_main },
        NormalNC     = { bg = bg_main }, -- Inactive windows
        SignColumn   = { bg = bg_main }, -- Gutter where git signs/errors appear
        EndOfBuffer  = { bg = bg_main }, -- The ~ at end of file

        -- 2. SPLITS & BORDERS
        -- We keep these transparent ("NONE") to avoid ugly blocky lines
        VertSplit    = { fg = p.border, bg = "NONE" },
        WinSeparator = { fg = p.border, bg = "NONE" },

        -- 3. CURSOR & LINES
        Cursor       = { bg = p.cursor, fg = p.bg },
        CursorLine   = { bg = p.bg_highlight },                -- Highlights the line you are on

        LineNr       = { fg = p.fg_subtle },                   -- Standard line numbers
        CursorLineNr = { fg = p.accent_primary, bold = true }, -- Current line number (Gold/Yellow)

        -- 4. STATUSLINE
        -- We clear the background ("NONE") so Lualine can control it fully
        StatusLine   = { bg = "NONE", fg = p.fg_dim },
        StatusLineNC = { bg = "NONE", fg = p.fg_dim },

        -- 5. POPUPS & FLOATING WINDOWS
        -- These usually stay Opaque (Colored) so they don't blend into text behind them
        NormalFloat  = { fg = p.fg, bg = p.bg_popup },
        FloatBorder  = { fg = p.border, bg = p.bg_popup },

        Pmenu        = { bg = p.bg_popup, fg = p.fg_dim },                          -- Autocomplete Menu
        PmenuSel     = { bg = p.bg_highlight, fg = p.accent_primary, bold = true }, -- Selected Item
        PmenuSbar    = { bg = p.bg_popup },                                         -- Scrollbar background
        PmenuThumb   = { bg = p.fg_dim },                                           -- Scrollbar thumb

        -- 6. SEARCH & SELECTION
        Visual       = { bg = p.selection_bg, fg = p.selection_fg },
        Search       = { bg = p.accent_secondary, fg = p.bg, bold = true },
        IncSearch    = { bg = p.accent_primary, fg = p.bg },
        MatchParen   = { fg = p.accent_primary, bold = true, underline = true }, -- Matching brackets ()

        -- 7. MESSAGES & ERROR TEXT
        ErrorMsg     = { fg = p.error, bold = true },
        WarningMsg   = { fg = p.warn, bold = true },
        MoreMsg      = { fg = p.accent_secondary, bold = true },
    }
end

return M
