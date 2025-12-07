-----------------------------------------------------------
-- Leader Key: <space> (must be set first)
-----------------------------------------------------------
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Environment Setup
-----------------------------------------------------------
-- Extend PATH on MacOS Only! (delete on Arch etc)
--vim.env.PATH = "/opt/homebrew/bin:" .. os.getenv("PATH")
vim.env.PATH = "/opt/homebrew/bin:" .. vim.env.PATH

-----------------------------------------------------------
-- Core Configuration
-----------------------------------------------------------
require("core")

-----------------------------------------------------------
--  User Interface Modules
-----------------------------------------------------------
require("ui.dashboard")
require("ui.theme").load("sayel-night")
require("ui.preview").setup()

-----------------------------------------------------------
--  Plugins (loaded after core)
-----------------------------------------------------------

local p = require("ui.themes.sayel-night.colours").palette

vim.api.nvim_set_hl(0, "RenderMarkdownBold", { fg = p.fg, bold = true })
vim.api.nvim_set_hl(0, "RenderMarkdownItalic", { fg = p.fg, italic = true })
vim.api.nvim_set_hl(0, "RenderMarkdownBoldItalic", { fg = p.fg, bold = true, italic = true })

-- treesitter inline markdown groups
vim.api.nvim_set_hl(0, "@markup.strong.markdown_inline", { fg = p.fg, bold = true })
vim.api.nvim_set_hl(0, "@markup.emphasis.markdown_inline", { fg = p.fg, italic = true })
vim.api.nvim_set_hl(0, "@markup.strong.emphasis.markdown_inline", { fg = p.fg, bold = true, italic = true })

-- H1
vim.api.nvim_set_hl(0, "markdownH1", { fg = p.bright_blue, bold = true })
vim.api.nvim_set_hl(0, "markdownH1Delimiter", { fg = p.bright_blue, bold = true })

-- H2
vim.api.nvim_set_hl(0, "markdownH2", { fg = p.bright_magenta, bold = true })
vim.api.nvim_set_hl(0, "markdownH2Delimiter", { fg = p.bright_magenta, bold = true })

-- H3
vim.api.nvim_set_hl(0, "markdownH3", { fg = p.bright_cyan, bold = true })
vim.api.nvim_set_hl(0, "markdownH3Delimiter", { fg = p.bright_cyan, bold = true })

-- H4
vim.api.nvim_set_hl(0, "markdownH4", { fg = p.green, bold = true })
vim.api.nvim_set_hl(0, "markdownH4Delimiter", { fg = p.green, bold = true })

-- H5
vim.api.nvim_set_hl(0, "markdownH5", { fg = p.yellow, bold = true })
vim.api.nvim_set_hl(0, "markdownH5Delimiter", { fg = p.yellow, bold = true })

-- H6
vim.api.nvim_set_hl(0, "markdownH6", { fg = p.red, bold = true })
vim.api.nvim_set_hl(0, "markdownH6Delimiter", { fg = p.red, bold = true })

vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { fg = p.bright_blue, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { fg = p.bright_magenta, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { fg = p.bright_cyan, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { fg = p.green, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { fg = p.yellow, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.6.markdown", { fg = p.red, bold = true })

for i = 1, 6 do
    vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = "NONE" })
end

vim.api.nvim_set_hl(0, "RenderMarkdownQuote", { fg = p.bright_black, italic = true })
vim.api.nvim_set_hl(0, "RenderMarkdownCode", { fg = p.bright_green })
vim.api.nvim_set_hl(0, "RenderMarkdownCodeBlock", { fg = p.bright_green, bg = "NONE" })

vim.defer_fn(function()
    require('lualine').setup({
        options = {
            theme = 'auto',
            icons_enabled = true,
        },
    })
end, 20)

-- Add this to init.lua

local function sync_ghostty_bg()
    -- 1. Get the background color of the current "Normal" group
    local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
    local bg = normal.bg

    -- 2. If a background color exists, convert it to Hex and send it to Ghostty
    if bg then
        local hex = string.format("#%06x", bg)
        -- Send OSC 11 escape sequence to change terminal background
        io.write(string.format("\27]11;%s\7", hex))
    end
end

-- 3. Create the Autocommand to run this every time the color scheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = sync_ghostty_bg,
})

-- 4. Also run it immediately on startup so the first theme applies
sync_ghostty_bg()

-- 5. OPTIONAL: Reset background when exiting Neovim
vim.api.nvim_create_autocmd("VimLeave", {
    pattern = "*",
    callback = function()
        -- Resets to Ghostty's default background
        io.write("\27]111\7")
    end,
})
