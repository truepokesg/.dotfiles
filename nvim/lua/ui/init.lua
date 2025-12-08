-------------------------------------------------------
-- COLOUR PICKER!
-------------------------------------------------------
local M = {}

function M.load(theme_name)
    -- 1. Find the palette (We use 'ui.themes' as the standard folder)
    local ok, palette = pcall(require, "ui.palettes." .. theme_name)
    if not ok then
        return vim.notify("Theme " .. theme_name .. " not found!", vim.log.levels.ERROR)
    end

    -- 2. Global Settings & Resets
    vim.cmd('packadd! nohlsearch') -- Auto-clears search highlight when done
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end

    vim.o.termguicolors = true
    vim.g.colors_name = theme_name

    -- Safety check: ensure meta table exists
    local meta = palette.meta or {}
    vim.o.background = meta.background or "dark"

    -- 3. Load Groups
    -- CRITICAL: Extract transparency flag to pass to base.lua
    local is_transparent = meta.transparent == true

    local groups = {}
    local function merge(t) for k, v in pairs(t) do groups[k] = v end end

    -- Pass 'is_transparent' so base.lua knows to set bg="NONE"
    merge(require("ui.groups.base").get(palette, is_transparent))
    merge(require("ui.groups.syntax").get(palette))
    merge(require("ui.groups.plugins").get(palette))

    -- 4. Apply Highlights
    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end

    -- 5. Set Terminal Colors (The Polymath Requirement)
    -- Ensures internal terminals (Python/C++ output) match your theme
    M.set_terminal(palette)
end

function M.set_terminal(p)
    -- Maps palette colors to Neovim's embedded terminal
    vim.g.terminal_color_0  = p.bg_highlight or p.bg
    vim.g.terminal_color_1  = p.error
    vim.g.terminal_color_2  = p.git_add or p.string
    vim.g.terminal_color_3  = p.warn
    vim.g.terminal_color_4  = p.accent_secondary or p.func
    vim.g.terminal_color_5  = p.keyword
    vim.g.terminal_color_6  = p.hint or p.accent_primary
    vim.g.terminal_color_7  = p.fg

    -- Bright variants (8-15)
    vim.g.terminal_color_8  = p.fg_subtle
    vim.g.terminal_color_9  = p.error
    vim.g.terminal_color_10 = p.git_add or p.string
    vim.g.terminal_color_11 = p.warn
    vim.g.terminal_color_12 = p.accent_secondary or p.func
    vim.g.terminal_color_13 = p.keyword
    vim.g.terminal_color_14 = p.hint or p.accent_primary
    vim.g.terminal_color_15 = p.fg
end

return M
