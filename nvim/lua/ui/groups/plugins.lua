-- lua/ui/groups/plugins.lua
local M = {}

M.get = function(p)
    return {
        -- === DASHBOARD (ASCII Art & Keys) ===
        -- Maps your dashboard config to your palette's accents

        --[[
        DashboardHeader       = { fg = p.accent_primary, bold = true },
        DashboardFooter       = { fg = p.fg_subtle, italic = true },
        DashboardIcon         = { fg = p.accent_secondary },
        DashboardDesc         = { fg = p.fg },
        DashboardKey          = { fg = p.keyword, bold = true },
        DashboardShortCut     = { fg = p.keyword },

        -- === TELESCOPE (Find Files Popup) ===
        -- Border uses 'bg_popup' to make it look like a solid window
        TelescopeBorder       = { fg = p.border, bg = p.bg_popup },
        TelescopeNormal       = { bg = p.bg_popup },
        TelescopePromptNormal = { bg = p.bg_highlight },
        TelescopePromptBorder = { fg = p.bg_highlight, bg = p.bg_highlight },
        TelescopeTitle        = { fg = p.bg, bg = p.accent_primary, bold = true },
        TelescopeMatching     = { fg = p.accent_secondary, bold = true },
        TelescopeSelection    = { bg = p.selection_bg, fg = p.fg },

        -- === GITSIGNS (The gutter markers) ===
        GitSignsAdd           = { fg = p.git_add, bg = "NONE" },
        GitSignsChange        = { fg = p.git_change, bg = "NONE" },
        GitSignsDelete        = { fg = p.git_delete, bg = "NONE" },

        -- === CMP (Autocomplete Menu) ===
        -- Standardizes the icons in your autocomplete popup
        CmpItemAbbrDeprecated = { fg = p.fg_subtle, strikethrough = true },
        CmpItemAbbrMatch      = { fg = p.accent_primary, bold = true },
        CmpItemKindFunction   = { fg = p.func },
        CmpItemKindMethod     = { fg = p.func },
        CmpItemKindKeyword    = { fg = p.keyword },
        CmpItemKindVariable   = { fg = p.variable },

        -- === LAZY.NVIM (Plugin Manager UI) ===
        LazyNormal            = { bg = p.bg_popup },

        -- === MASON (LSP Installer UI) ===
        MasonNormal           = { bg = p.bg_popup },

        -- === NEO-TREE / NVIM-TREE (File Explorer) ===
        -- Uses the main background (transparent if enabled)
        NvimTreeNormal        = { fg = p.fg, bg = "NONE" },
        NeoTreeNormal         = { fg = p.fg, bg = "NONE" },

        -- === WHICH-KEY (Keybinding Helper) ===
        WhichKey              = { fg = p.accent_secondary },
        WhichKeyGroup         = { fg = p.keyword },
        WhichKeyDesc          = { fg = p.fg },
        WhichKeySeparator     = { fg = p.fg_dim },
        WhichKeyFloat         = { bg = p.bg_popup },
        ]]
    }
end

return M
