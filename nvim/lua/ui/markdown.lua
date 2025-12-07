-----------------------------------------------------------
-- Markdown & RenderMarkdown Highlight Overrides
-----------------------------------------------------------

local M = {}

function M.apply(p)
    -----------------------------------------------------------
    -- Inline emphasis
    -----------------------------------------------------------
    vim.api.nvim_set_hl(0, "RenderMarkdownBold", { fg = p.fg, bold = true })
    vim.api.nvim_set_hl(0, "RenderMarkdownItalic", { fg = p.fg, italic = true })
    vim.api.nvim_set_hl(0, "RenderMarkdownBoldItalic", { fg = p.fg, bold = true, italic = true })

    -- Treesitter inline markdown
    vim.api.nvim_set_hl(0, "@markup.strong.markdown_inline", { fg = p.fg, bold = true })
    vim.api.nvim_set_hl(0, "@markup.emphasis.markdown_inline", { fg = p.fg, italic = true })
    vim.api.nvim_set_hl(0, "@markup.strong.emphasis.markdown_inline", { fg = p.fg, bold = true, italic = true })

    -----------------------------------------------------------
    -- Headings (H1–H6) — Treesitter + legacy TS groups
    -----------------------------------------------------------
    local heading_colors = {
        p.bright_blue,
        p.bright_magenta,
        p.bright_cyan,
        p.green,
        p.yellow,
        p.red,
    }

    for i, color in ipairs(heading_colors) do
        -- Old Markdown highlight groups
        vim.api.nvim_set_hl(0, "markdownH" .. i, { fg = color, bold = true })
        vim.api.nvim_set_hl(0, "markdownH" .. i .. "Delimiter", { fg = color, bold = true })

        -- Treesitter markup groups
        vim.api.nvim_set_hl(0, "@markup.heading." .. i .. ".markdown", { fg = color, bold = true })

        -- RenderMarkdown backgrounds for headings (no background)
        vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = "NONE" })
    end

    -----------------------------------------------------------
    -- Quote + Code blocks
    -----------------------------------------------------------
    vim.api.nvim_set_hl(0, "RenderMarkdownQuote", { fg = p.bright_black, italic = true })
    vim.api.nvim_set_hl(0, "RenderMarkdownCode", { fg = p.bright_green })
    vim.api.nvim_set_hl(0, "RenderMarkdownCodeBlock", { fg = p.bright_green, bg = "NONE" })
end

return M
