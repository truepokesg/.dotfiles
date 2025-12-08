-- lua/ui/groups/syntax.lua
local M = {}

M.get = function(p)
    return {
        -- 1. STANDARD CODE SYNTAX (Existing logic)
        Comment                                     = { fg = p.fg_subtle, italic = true },
        Keyword                                     = { fg = p.keyword, italic = true },
        Function                                    = { fg = p.func, bold = true },
        String                                      = { fg = p.string },
        Type                                        = { fg = p.type },
        Constant                                    = { fg = p.constant },
        Variable                                    = { fg = p.variable },
        Identifier                                  = { fg = p.variable },
        Operator                                    = { fg = p.accent_secondary },
        Statement                                   = { fg = p.keyword },

        -- Treesitter Linking
        ["@function"]                               = { link = "Function" },
        ["@keyword"]                                = { link = "Keyword" },
        ["@string"]                                 = { link = "String" },
        ["@variable"]                               = { link = "Identifier" },

        -- 2. INLINE EMPHASIS (From your snippet)
        -- Treesitter
        ["@markup.strong.markdown_inline"]          = { fg = p.fg, bold = true },
        ["@markup.emphasis.markdown_inline"]        = { fg = p.fg, italic = true },
        ["@markup.strong.emphasis.markdown_inline"] = { fg = p.fg, bold = true, italic = true },
        -- RenderMarkdown
        RenderMarkdownBold                          = { fg = p.fg, bold = true },
        RenderMarkdownItalic                        = { fg = p.fg, italic = true },
        RenderMarkdownBoldItalic                    = { fg = p.fg, bold = true, italic = true },

        -- 3. QUOTES & CODE (From your snippet)
        RenderMarkdownQuote                         = { fg = p.fg_subtle, italic = true }, -- mapped p.bright_black -> p.fg_subtle
        RenderMarkdownCode                          = { fg = p.string, bg = p.bg_highlight }, -- mapped p.bright_green -> p.string
        RenderMarkdownCodeBlock                     = { fg = p.string, bg = "NONE" },

        -- 4. HEADINGS (H1-H6)
        -- We map your specific gradient (cyan, bright_green, etc) using the p.h1...p.h6 keys
        -- we added to the sayel_night.lua palette.

        -- H1
        ["@markup.heading.1.markdown"]              = { fg = p.h1 or p.keyword, bold = true },
        markdownH1                                  = { fg = p.h1 or p.keyword, bold = true },
        markdownH1Delimiter                         = { fg = p.h1 or p.keyword, bold = true },
        RenderMarkdownH1Bg                          = { bg = "NONE" },

        -- H2
        ["@markup.heading.2.markdown"]              = { fg = p.h2 or p.func, bold = true },
        markdownH2                                  = { fg = p.h2 or p.func, bold = true },
        markdownH2Delimiter                         = { fg = p.h2 or p.func, bold = true },
        RenderMarkdownH2Bg                          = { bg = "NONE" },

        -- H3
        ["@markup.heading.3.markdown"]              = { fg = p.h3 or p.info, bold = true },
        markdownH3                                  = { fg = p.h3 or p.info, bold = true },
        markdownH3Delimiter                         = { fg = p.h3 or p.info, bold = true },
        RenderMarkdownH3Bg                          = { bg = "NONE" },

        -- H4
        ["@markup.heading.4.markdown"]              = { fg = p.h4 or p.constant, bold = true },
        markdownH4                                  = { fg = p.h4 or p.constant, bold = true },
        markdownH4Delimiter                         = { fg = p.h4 or p.constant, bold = true },

        -- H5
        ["@markup.heading.5.markdown"]              = { fg = p.h5 or p.error, bold = true },
        markdownH5                                  = { fg = p.h5 or p.error, bold = true },
        markdownH5Delimiter                         = { fg = p.h5 or p.error, bold = true },

        -- H6
        ["@markup.heading.6.markdown"]              = { fg = p.h6 or p.fg, bold = true },
        markdownH6                                  = { fg = p.h6 or p.fg, bold = true },
        markdownH6Delimiter                         = { fg = p.h6 or p.fg, bold = true },
    }
end

return M
