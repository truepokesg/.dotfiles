local M = {}

function M.init()
    vim.g.vimtex_view_method = "zathura" -- or skim, okular, sumatra
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_quickfix_mode = 0
end

return M
