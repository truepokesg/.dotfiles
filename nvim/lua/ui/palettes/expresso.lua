-- lua/ui/palettes/expresso.lua
return {
    -- Meta Settings
    meta             = {
        background = "dark",
        transparent = true, -- CRITICAL: Enables the "Blur" effect
    },

    -- Core Palette (Frozen Frappe)
    bg               = "#1e1e2e", -- Catppuccin Mocha Base (Deep Blue-ish Grey)
    bg_popup         = "#181825", -- Mantle (Darker depth)
    bg_highlight     = "#313244", -- Surface0 (Subtle cool grey)

    fg               = "#cdd6f4", -- Text (Crisp White)
    fg_dim           = "#a6adc8", -- Subtext0 (Muted Blue-Grey)
    fg_subtle        = "#6c7086", -- Overlay0 (Cool Grey for comments)

    border           = "#9399b2", -- Overlay2 (Frosted edge)

    -- Syntax Semantics (The "Pastel Ice" Tones)
    keyword          = "#cba6f7", -- Mauve (Soft Purple)
    func             = "#89b4fa", -- Blue (Ice Water)
    string           = "#a6e3a1", -- Green (Mint Ice)
    type             = "#f9e2af", -- Yellow (Sunlight on snow)
    constant         = "#fab387", -- Peach
    variable         = "#cdd6f4", -- White (Snow)

    -- UI Accents & Interaction
    accent_primary   = "#f5c2e7", -- Pink (Kirby / Soft Rose)
    accent_secondary = "#94e2d5", -- Teal (Glacier)

    cursor           = "#f5c2e7", -- Pink Cursor
    selection_bg     = "#45475a", -- Surface1
    selection_fg     = "#cdd6f4",

    -- Diagnostics (Soft Pastels)
    error            = "#f38ba8", -- Red
    warn             = "#fab387", -- Peach
    info             = "#89b4fa", -- Blue
    hint             = "#94e2d5", -- Teal

    -- Markdown Headings (The "Aurora Borealis" Gradient)
    h1               = "#cba6f7", -- Mauve
    h2               = "#f5c2e7", -- Pink
    h3               = "#89b4fa", -- Blue
    h4               = "#94e2d5", -- Teal
    h5               = "#a6e3a1", -- Green
    h6               = "#bac2de", -- Lavender

    -- Git Status
    git_add          = "#a6e3a1", -- Green
    git_change       = "#89b4fa", -- Blue
    git_delete       = "#f38ba8", -- Red
}
