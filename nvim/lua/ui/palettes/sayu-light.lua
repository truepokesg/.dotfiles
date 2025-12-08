-- lua/ui/palettes/sayu_light.lua
return {
    -- Meta Settings
    meta             = {
        background = "light",
        transparent = false, -- Zedokai is crisp and opaque
    },

    -- Core Palette (Crisp Laboratory White)
    bg               = "#fafafa", -- Clean soft white (not blinding #ffffff)
    bg_popup         = "#f0f0f0", -- Light grey depth
    bg_highlight     = "#e5e5e6", -- Selection highlight

    fg               = "#383a42", -- Dark Charcoal (Soft Black)
    fg_dim           = "#a0a1a7", -- Medium Grey
    fg_subtle        = "#696c77", -- Cool Grey comments

    border           = "#d0d0d0", -- Subtle separation

    -- Syntax Semantics (The Monokai Spectrum)
    keyword          = "#a626a4", -- Vibrant Purple/Pink
    func             = "#4078f2", -- Electric Blue
    string           = "#50a14f", -- Lush Green
    type             = "#c18401", -- Deep Amber/Gold
    constant         = "#986801", -- Bronze
    variable         = "#383a42", -- Charcoal

    -- UI Accents & Interaction
    accent_primary   = "#a626a4", -- Purple (Cursor, Active Items)
    accent_secondary = "#50a14f", -- Green (Success)

    cursor           = "#a626a4", -- Purple Cursor
    selection_bg     = "#d3d3d3", -- Grey selection
    selection_fg     = "#000000",

    -- Diagnostics (Traffic Lights)
    error            = "#e45649", -- Red
    warn             = "#c18401", -- Amber
    info             = "#4078f2", -- Blue
    hint             = "#a0a1a7", -- Grey

    -- Markdown Headings (Vibrant Gradient)
    h1               = "#a626a4", -- Purple
    h2               = "#e45649", -- Red
    h3               = "#c18401", -- Orange
    h4               = "#50a14f", -- Green
    h5               = "#4078f2", -- Blue
    h6               = "#383a42", -- Charcoal

    -- Git Status
    git_add          = "#50a14f", -- Green
    git_change       = "#4078f2", -- Blue
    git_delete       = "#e45649", -- Red
}
