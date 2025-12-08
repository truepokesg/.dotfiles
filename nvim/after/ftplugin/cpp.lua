-- ~/.config/nvim/after/ftplugin/cpp.lua

-- Use 4 spaces for indentation (Standard for C++)
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.expandtab = true

-- Set column limit line at 100 characters
vim.opt_local.colorcolumn = "100"

-- Keybind to quickly compile/run
vim.keymap.set("n", "<leader>r", ":!g++ % -o %< && ./%<<CR>", { buffer = true })
