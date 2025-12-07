local M = {}

function M.setup()
    require("nvim-treesitter").setup({
        ensure_installed = {
            "markdown",
            "markdown_inline",
            "latex",
            "lua",
            "vim",
            "bash",
            "json",
        },
        highlight = { enable = true },
    })
end

return M
