-- lua/ui/palettes/icy_wind.lua
return {
    -- Meta Settings
    meta             = {
        background = "light", -- Iced Latte is a LIGHT theme
        transparent = true,   -- Essential for the "Blur" effect
    },

    -- Core Palette (Iced Latte = Cool White)
    bg               = "#eff1f5", -- Standard Latte Base (Cool White)
    bg_popup         = "#e6e9ef", -- Mantle (Slightly darker cool grey)
    bg_highlight     = "#ccd0da", -- Surface0 (Selection/CursorLine)

    fg               = "#4c4f69", -- Text (Deep Asphalt)
    fg_dim           = "#6c6f85", -- Subtext0 (Cool Grey)
    fg_subtle        = "#9ca0b0", -- Overlay0 (Faded Grey)

    border           = "#bcc0cc", -- Surface1 (Soft Edge)

    -- Syntax Semantics (Frozen Pastels)
    keyword          = "#8839ef", -- Mauve (Deep Purple)
    func             = "#1e66f5", -- Blue (Deep Ice)
    string           = "#40a02b", -- Green (Mint)
    type             = "#179299", -- Teal (Glacier)
    constant         = "#7287fd", -- Lavender
    variable         = "#4c4f69", -- Text (Neutral)

    -- UI Accents & Interaction
    accent_primary   = "#04a5e5", -- Sky Blue (Dashboard Header, Active Items)
    accent_secondary = "#209fb5", -- Sapphire (Search, Icons)

    cursor           = "#dc8a78", -- Rosewater (Soft contrast cursor)
    selection_bg     = "#acb0be", -- Surface2 (Darker grey selection)
    selection_fg     = "#4c4f69",

    -- Diagnostics (Cooler Warning Tones)
    error            = "#d20f39", -- Red
    warn             = "#df8e1d", -- Yellow
    info             = "#1e66f5", -- Blue
    hint             = "#179299", -- Teal

    -- Markdown Headings (The "Glacier" Gradient)
    h1               = "#1e66f5", -- Deep Blue
    h2               = "#04a5e5", -- Sky
    h3               = "#209fb5", -- Sapphire
    h4               = "#179299", -- Teal
    h5               = "#40a02b", -- Green
    h6               = "#8839ef", -- Mauve

    -- Git Status
    git_add          = "#40a02b", -- Green
    git_change       = "#04a5e5", -- Sky
    git_delete       = "#d20f39", -- Red
}
