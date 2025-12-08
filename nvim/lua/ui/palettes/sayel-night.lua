-- lua/ui/palettes/sayel-night.lua
return {
    -- Meta Settings
    meta             = {
        background = "dark",
        transparent = true, -- Sets Normal/SignColumn bg to NONE
    },

    -- Core Palette (Base UI)
    bg               = "#161616", -- Main background (fallback if transparent=false)
    bg_popup         = "#1f1f1f", -- Pmenu, floating windows
    bg_highlight     = "#262626", -- CursorLine, visual selection bg

    fg               = "#f2f4f8", -- Standard text
    fg_dim           = "#b7cbcb", -- Dimmed text, selection fg
    fg_subtle        = "#5E5E5E", -- Comments, line numbers, non-text

    border           = "#5E5E5E", -- Window separators, borders

    -- Syntax Semantics
    keyword          = "#815bb5", -- Magenta
    func             = "#ff7eff", -- Bright Magenta
    string           = "#90d762", -- Bright Green
    type             = "#97522c", -- Yellow
    constant         = "#41a83e", -- Green
    variable         = "#ececec", -- White/Identifier

    -- UI Accents & Interaction
    accent_primary   = "#eaa549", -- Active LineNr, Pmenu Selection
    accent_secondary = "#3b8992", -- Search Matches, Operators

    cursor           = "#e3bf21",
    selection_bg     = "#4d5e65",
    selection_fg     = "#b7cbcb",

    -- Diagnostics (LSP)
    error            = "#ff1010",
    warn             = "#eaa549",
    info             = "#1dd3ee",
    hint             = "#7ff1cb",

    -- Markdown Headings (Gradient)
    h1               = "#3b8992", -- Cyan
    h2               = "#90d762", -- Bright Green
    h3               = "#7ff1cb", -- Bright Cyan
    h4               = "#41a83e", -- Green
    h5               = "#9b291c", -- Red
    h6               = "#010921", -- Black

    -- Git Status
    git_add          = "#90d762",
    git_change       = "#1dd3ee",
    git_delete       = "#ff1010",
}
