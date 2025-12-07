local M = {}

function M.setup()
    require("lualine").setup({
        options = {
            theme = "auto",
            icons_enabled = true,
        },
    })
end

return M
