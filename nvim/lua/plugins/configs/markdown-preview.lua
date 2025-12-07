local M = {}

function M.init()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_port = "8170"
    vim.g.mkdp_open_browser = 1
    vim.g.mkdp_browser = "zen"
    vim.g.mkdp_theme = "dark"
    --vim.g.mkdp_highlight_css = vim.fn.expand("~/.config/nvim/markdown-preview/solarized-dark.css")
end

return M
