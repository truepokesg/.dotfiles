-- lua/ui/palettes/doodlebob.lua
return {
    -- Meta Settings
    meta             = {
        background = "light",
        transparent = false, -- DoodleBob lives on paper (Opaque)
    },

    -- Core Palette (Plain White Paper)
    bg               = "#ffffff", -- Pure White
    bg_popup         = "#f2f2f2", -- Light Grey (Sketchbook page)
    bg_highlight     = "#e8e8e8", -- Faint pencil shading (CursorLine)

    fg               = "#000000", -- Pure Black (Sharpie/Pencil)
    fg_dim           = "#555555", -- Dark Grey (Graphite)
    fg_subtle        = "#888888", -- Faded sketch lines (Comments)

    border           = "#000000", -- Bold Black Borders (DoodleBob style)

    -- Syntax Semantics (The Sketch)
    -- The focus is on Bold/Italic distinctions rather than rainbow colors
    keyword          = "#000000", -- Bold Black (The Outline)
    func             = "#000000", -- Black
    string           = "#444444", -- Dark Grey Graphite
    type             = "#000000", -- Bold Black
    constant         = "#000000", -- Black
    variable         = "#222222", -- Soft Black

    -- UI Accents & Interaction
    accent_primary   = "#000000", -- Everything is Black
    accent_secondary = "#999999", -- Grey

    cursor           = "#000000", -- The Pencil Tip
    selection_bg     = "#d4d4d4", -- Grey eraser smudge
    selection_fg     = "#000000",

    -- Diagnostics (The Eraser & The Blueprint)
    error            = "#d75f5f", -- Eraser Pink (Muted)
    warn             = "#d78700", -- Pencil Yellow (Muted)
    info             = "#005f87", -- Blueprint Blue
    hint             = "#888888", -- Grey

    -- Markdown Headings (Stroke Weight Gradient)
    -- Instead of colors, we use varying shades of "Ink"
    h1               = "#000000", -- 100% Black
    h2               = "#222222", -- 90% Black
    h3               = "#444444", -- 80% Black
    h4               = "#666666", -- 60% Black
    h5               = "#888888", -- 40% Black
    h6               = "#aaaaaa", -- 20% Black

    -- Git Status (Sketch Marks)
    git_add          = "#5f875f", -- Muted Green (Grass doodle)
    git_change       = "#5f87af", -- Muted Blue (Sky doodle)
    git_delete       = "#d75f5f", -- Eraser Pink
}
