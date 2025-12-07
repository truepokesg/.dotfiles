-----------------------------------------------------------
--  Core options
-----------------------------------------------------------
vim.o.number = true
vim.o.relativenumber = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.list = true
vim.o.confirm = true

--  Wrapping & line breaking (writing-friendly)
vim.opt.whichwrap:append {
    ["<"] = true, -- backspace
    [">"] = true, -- space
    h = true,     -- normal-mode left
    l = true,     -- normal-mode right
    ["["] = true, -- left arrow wrap
    ["]"] = true, -- right arrow wrap
}

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.formatoptions:append("n")
vim.opt.backspace = { "indent", "eol", "start" }

vim.opt.showmode = false
vim.opt.laststatus = 3
vim.opt.termguicolors = true
