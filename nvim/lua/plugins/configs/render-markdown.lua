local M = {}

function M.setup()
    require("render-markdown").setup({
        heading = {
            enabled = true,
            sign = false,
            number = false,
            icons = {},
            backgrounds = { false, false, false, false, false, false },
            style = "inline",
        },
        code = { enabled = true },
        bullet = { icons = { "●", "○", "◆", "•" } },
        quote = { enabled = true, icons = "│", },
        link = { enabled = true, style = "italic", },
    })
end

return M
