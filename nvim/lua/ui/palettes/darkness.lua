-- lua/ui/palettes/darkness.lua
return {
    -- Meta Settings
    meta             = {
        background = "dark",
        transparent = false, -- The "Void" should be opaque black
    },

    -- Core Palette (The Void)
    bg               = "#090909", -- Almost pure black, but softer on OLEDs
    bg_popup         = "#121212", -- Slightly lighter for depth
    bg_highlight     = "#1a1a1a", -- Very subtle charcoal for cursorline

    fg               = "#e0e0e0", -- Stormtrooper White/Silver
    fg_dim           = "#808080", -- Battleship Grey
    fg_subtle        = "#4a4a4a", -- Dark Grey (Comments)

    border           = "#333333", -- Metal Grey

    -- Syntax Semantics (The Sith Code)
    keyword          = "#ff5555", -- Vibrant Red (Force / Power)
    func             = "#ffffff", -- Pure White (Action / Clarity)
    string           = "#a8a8a8", -- Light Grey (Data is neutral)
    type             = "#cc0000", -- Crimson (Structure)
    constant         = "#ff5555", -- Red
    variable         = "#e0e0e0", -- White

    -- UI Accents & Interaction
    accent_primary   = "#ff5555", -- Red (Cursor, Active Items)
    accent_secondary = "#444444", -- Grey (Subtle interactions)

    cursor           = "#ff5555", -- Red Lightsaber Cursor
    selection_bg     = "#330000", -- Deep Red selection
    selection_fg     = "#ffffff",

    -- Diagnostics (Stark Warning Lights)
    error            = "#ff0000", -- Pure Red
    warn             = "#ffaa00", -- Amber
    info             = "#666666", -- Grey
    hint             = "#444444", -- Dark Grey

    -- Markdown Headings (The Descent Gradient)
    h1               = "#ff5555", -- Bright Red
    h2               = "#cc0000", -- Crimson
    h3               = "#990000", -- Maroon
    h4               = "#660000", -- Blood
    h5               = "#808080", -- Grey
    h6               = "#4a4a4a", -- Dark Grey

    -- Git Status
    git_add          = "#555555", -- Grey (New things are neutral)
    git_change       = "#aaaaaa", -- Silver
    git_delete       = "#ff0000", -- Red (Destruction)
}
