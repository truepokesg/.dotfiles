-----------------------------------------------------------
-- Theme Loader
-----------------------------------------------------------
local M = {}

function M.load(name)
    -- Load theme config safely
    local ok, theme = pcall(require, "ui.themes." .. name .. ".config")
    if not ok then
        vim.notify("Theme '" .. name .. "' not found!", vim.log.levels.ERROR)
        return
    end

    theme.apply()

    -- 2. Load the theme's palette for downstream modules
    local ok_palette, palette = pcall(require, "ui.themes." .. name .. ".colours")
    if not ok_palette then
        vim.notify("Palette for theme '" .. name .. "' not found", vim.log.levels.ERROR)
        return
    end
    palette = palette.palette

    -- 3. Apply global UI overrides
    local ui_highlights = require("ui.highlights")
    ui_highlights.apply()

    -- 4. Apply Markdown highlight overrides using palette
    local markdown = require("ui.markdown")
    markdown.apply(palette)
end

return M
