-- lua/ui/palettes/papermache.lua
return {
    -- Meta Settings
    meta             = {
        background = "dark",
        transparent = false, -- Paper is opaque by default to keep the "notebook" feel
    },

    -- Core Palette (Base UI - Warm Espresso & Parchment)
    bg               = "#1d1c19", -- Deep warm espresso (not harsh black)
    bg_popup         = "#242220", -- Slightly lighter cocoa for menus
    bg_highlight     = "#2b2926", -- Warm charcoal for cursorline

    fg               = "#dcd7ba", -- Antique cream / Parchment
    fg_dim           = "#a8a396", -- Muted beige for selection text
    fg_subtle        = "#726e6a", -- Warm stone grey for comments

    border           = "#54504a", -- Earthy grey border

    -- Syntax Semantics (The "Dessert" Tones)
    keyword          = "#c47d62", -- Clay / Terracotta (Warm Red-Brown)
    func             = "#dfa065", -- Caramel / Gold
    string           = "#e6c384", -- Sand / Biscuit
    type             = "#7fb4ca", -- Muted Slate Blue (adds cool contrast to warm theme)
    constant         = "#957fb8", -- Muted Berry / Fig
    variable         = "#dcd7ba", -- Cream (Variables stay neutral)

    -- UI Accents & Interaction
    accent_primary   = "#dfa065", -- Caramel (Active LineNr, Dashboard Header)
    accent_secondary = "#87a987", -- Sage Green (Search matches, Icons)

    cursor           = "#e6c384", -- Sand color cursor
    selection_bg     = "#4a4542", -- Warm grey selection
    selection_fg     = "#dcd7ba",

    -- Diagnostics (LSP - Earthy but functional)
    error            = "#c34043", -- Brick Red
    warn             = "#e0af68", -- Mustard
    info             = "#7fb4ca", -- Slate
    hint             = "#957fb8", -- Fig

    -- Markdown Headings (The "Sunset" Gradient)
    h1               = "#c47d62", -- Clay (H1)
    h2               = "#dfa065", -- Caramel (H2)
    h3               = "#e6c384", -- Sand (H3)
    h4               = "#87a987", -- Sage (H4)
    h5               = "#7fb4ca", -- Slate (H5)
    h6               = "#726e6a", -- Stone (H6)

    -- Git Status
    git_add          = "#87a987", -- Sage
    git_change       = "#7fb4ca", -- Slate
    git_delete       = "#c34043", -- Brick
}
