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
require("ui").load("sayel-night")
--require("ui.theme").load("sayel-night")
--require("ui.preview").setup()

-----------------------------------------------------------
--  Plugins (loaded after core)
-----------------------------------------------------------

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

-- oh
--
