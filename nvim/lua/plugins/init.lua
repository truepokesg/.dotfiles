return {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = vim.fn.executable("make") == 1
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
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
        },
        build = ":TSUpdate"
    },
    { "neovim/nvim-lspconfig" },
    { "stevearc/oil.nvim" },
    { "nvim-tree/nvim-web-devicons", opts = {} },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "mdx", "rmd" },
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            heading = {
                enabled = true,
                sign = false,
                number = false,
                icons = {},
                backgrounds = { -- explicitly disable all backgrounds
                    false, false, false, false, false, false
                },
                style = "inline",
            },
            code = { enabled = true },
            bullet = { icons = { "●", "○", "◆", "•" } },
            quote = {
                enabled = true,
                icons = "│",
            },
            link = {
                enabled = true,
                style = "italic",
            },
        },
    },
    { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
    {
        "lervag/vimtex",
        ft = { "tex" },
        init = function()
            vim.g.vimtex_view_method = "zathura" -- or skim, okular, sumatra
            vim.g.vimtex_compiler_method = "latexmk"
            vim.g.vimtex_quickfix_mode = 0
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
            vim.g.mkdp_port = '8170'
            vim.g.mkdp_open_browser = 0
            vim.g.mkdp_browser = ""
            vim.g.mkdp_theme = 'dark'
            --vim.g.mkdp_highlight_css = vim.fn.expand("~/.config/nvim/solarized-dark.css")
	    --vim.g.mkdp_markdown_css = vim.fn.expand("~/.config/nvim/monochrome.css")

        end,
        ft = { "markdown" },
    },
}
