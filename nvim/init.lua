-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '

vim.env.PATH = "/opt/homebrew/bin:" .. vim.env.PATH


-- [[ Setting options ]] See `:h vim.o`
-- NOTE: You can change these options as you wish!
-- For more options, you can see `:help option-list`
-- To see documentation for an option, you can use `:h 'optionname'`, for example `:h 'number'`
-- (Note the single quotes)

-- Print the line number in front of each line
vim.o.number = true

-- Use relative line numbers, so that it is easier to jump with j, k. This will affect the 'number'
-- option above, see `:h number_relativenumber`
vim.o.relativenumber = false

-- Sync clipboard between OS and Neovim. Schedule the setting after `UiEnter` because it can
-- increase startup-time. Remove this option if you want your OS clipboard to remain independent.
-- See `:help 'clipboard'`
vim.api.nvim_create_autocmd('UIEnter', {
    callback = function()
        vim.o.clipboard = 'unnamedplus'
    end,
})

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Highlight the line where the cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Show <tab> and trailing spaces
vim.o.list = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
vim.o.confirm = true

-- [[ Set up keymaps ]] See `:h vim.keymap.set()`, `:h mapping`, `:h keycodes`

-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l')

-- [[ Basic Autocommands ]].
-- See `:h lua-guide-autocommands`, `:h autocmd`, `:h nvim_create_autocmd()`

-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:h vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    callback = function()
        vim.hl.on_yank()
    end,
})

-- [[ Create user commands ]]
-- See `:h nvim_create_user_command()` and `:h user-commands`

-- Create a command `:GitBlameLine` that print the git blame for the current line
vim.api.nvim_create_user_command('GitBlameLine', function()
    local line_number = vim.fn.line('.') -- Get the current line number. See `:h line()`
    local filename = vim.api.nvim_buf_get_name(0)
    print(vim.fn.system({ 'git', 'blame', '-L', line_number .. ',+1', filename }))
end, { desc = 'Print the git blame for the current line' })

-- [[ Add optional packages ]]
-- Nvim comes bundled with a set of packages that are not enabled by
-- default. You can enable any of them by using the `:packadd` command.

-- For example, to add the "nohlsearch" package to automatically turn off search highlighting after
-- 'updatetime' and when going to insert mode
vim.cmd('packadd! nohlsearch')

-- Transparent background (let Ghostty show through)
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]]


vim.opt.whichwrap:append {
    ["<"] = true, -- backspace
    [">"] = true, -- space
    h = true,     -- normal-mode left
    l = true,     -- normal-mode right
    ["["] = true, -- left arrow wrap
    ["]"] = true, -- right arrow wrap
}

vim.opt.wrap = true
vim.opt.linebreak = true -- wrap at word boundaries, not mid-word
vim.opt.breakindent = true
vim.opt.formatoptions:append("n")
vim.opt.backspace = { "indent", "eol", "start" }

--[[
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text", "gitcommit" },
    callback = function()
        vim.opt.spell = true
        vim.opt.spelllang = { "en_gb" } -- or en_us
    end,
})
]]
require("core")
require("ui.dashboard")

require("ui.theme").load("sayel-night")


local p = require("ui.themes.sayel-night.colours").palette




vim.api.nvim_set_hl(0, "RenderMarkdownBold",        { fg = p.fg, bold = true })
vim.api.nvim_set_hl(0, "RenderMarkdownItalic",      { fg = p.fg, italic = true })
vim.api.nvim_set_hl(0, "RenderMarkdownBoldItalic",  { fg = p.fg, bold = true, italic = true })

-- treesitter inline markdown groups
vim.api.nvim_set_hl(0, "@markup.strong.markdown_inline",             { fg = p.fg, bold = true })
vim.api.nvim_set_hl(0, "@markup.emphasis.markdown_inline",           { fg = p.fg, italic = true })
vim.api.nvim_set_hl(0, "@markup.strong.emphasis.markdown_inline",    { fg = p.fg, bold = true, italic = true })


-- H1
vim.api.nvim_set_hl(0, "markdownH1",          { fg = p.bright_blue, bold = true })
vim.api.nvim_set_hl(0, "markdownH1Delimiter", { fg = p.bright_blue, bold = true })

-- H2
vim.api.nvim_set_hl(0, "markdownH2",          { fg = p.bright_magenta, bold = true })
vim.api.nvim_set_hl(0, "markdownH2Delimiter", { fg = p.bright_magenta, bold = true })

-- H3
vim.api.nvim_set_hl(0, "markdownH3",          { fg = p.bright_cyan, bold = true })
vim.api.nvim_set_hl(0, "markdownH3Delimiter", { fg = p.bright_cyan, bold = true })

-- H4
vim.api.nvim_set_hl(0, "markdownH4",          { fg = p.green, bold = true })
vim.api.nvim_set_hl(0, "markdownH4Delimiter", { fg = p.green, bold = true })

-- H5
vim.api.nvim_set_hl(0, "markdownH5",          { fg = p.yellow, bold = true })
vim.api.nvim_set_hl(0, "markdownH5Delimiter", { fg = p.yellow, bold = true })

-- H6
vim.api.nvim_set_hl(0, "markdownH6",          { fg = p.red, bold = true })
vim.api.nvim_set_hl(0, "markdownH6Delimiter", { fg = p.red, bold = true })


vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { fg = p.bright_blue,    bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { fg = p.bright_magenta, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { fg = p.bright_cyan,    bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { fg = p.green,          bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { fg = p.yellow,         bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.6.markdown", { fg = p.red,            bold = true })


for i = 1, 6 do
    vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = "NONE" })
end

vim.api.nvim_set_hl(0, "RenderMarkdownQuote", { fg = p.bright_black, italic = true })
vim.api.nvim_set_hl(0, "RenderMarkdownCode", { fg = p.bright_green })
vim.api.nvim_set_hl(0, "RenderMarkdownCodeBlock", { fg = p.bright_green, bg = "NONE" })

-- Spellcheck
--vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = p.bright_red })
--vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = p.bright_yellow })
--vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = p.magenta })
--vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = p.cyan })
--
--

--[[
local function open_w3m_markdown_preview()
  -- start server
  vim.cmd("MarkdownPreview")

  -- ensure URL is ready
  local url = vim.fn["mkdp#util#open_preview_page"]()
  if url == 0 then
    vim.wait(200, function()
      return vim.fn["mkdp#util#open_preview_page"]() ~= 0
    end)
    url = vim.fn["mkdp#util#open_preview_page"]()
  end

  -- right split + w3m
  vim.cmd("belowright vsplit")
  vim.cmd("terminal w3m " .. url)
  vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>mw", open_w3m_markdown_preview)
]]

vim.keymap.set("n", "<leader>g", function()
    vim.cmd("vsplit | terminal glow " .. vim.fn.shellescape(vim.fn.expand("%")))
end)


vim.keymap.set("n", "<leader>mp", function()
    vim.cmd("MarkdownPreview")
    vim.defer_fn(function()
        local url = vim.g.mkdp_preview_page_url or vim.g.mkdp_preview_page_url_backup
        if not url then
            print("Preview server not ready.")
            return
        end
        vim.cmd("vsplit | terminal carbonyl " .. url)
    end, 400)
end, { desc = "Open preview INSIDE Neovim via carbonyl" })


