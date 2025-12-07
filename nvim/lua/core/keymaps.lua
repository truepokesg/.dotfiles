-----------------------------------------------------------
--  Keymaps
-----------------------------------------------------------
-- Exit terminal mode with <Esc>
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Window navigation with Alt+hjkl
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')

vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l')

-- Colorscheme picker (with live preview enabled)
vim.keymap.set("n", "<leader>cs", function()
    require("telescope.builtin").colorscheme({ enable_preview = true })
end, { desc = "Pick Colorscheme (Preview)" })

-- Common telescope pickers (optional but recommended)
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help" })

-- Opens a vertical split on the left, makes it 30 columns wide, then opens Oil
vim.keymap.set("n", "-", ":vsplit | vertical resize 30 | Oil<CR>", { desc = "Open Oil Sidebar" })
-- Open a terminal at the bottom with <Space>t
vim.keymap.set("n", "<leader>t", ":split | resize 10 | term<CR>", { noremap = true, silent = true })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
