return {

    -------------------------------------------------------
    -- CORE
    -------------------------------------------------------
    { "nvim-lua/plenary.nvim" },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("plugins.configs.telescope").setup()
        end,
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = vim.fn.executable("make") == 1,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("plugins.configs.nvim-treesitter").setup()
        end
    },

    { "neovim/nvim-lspconfig" },
    {
        "stevearc/oil.nvim",
        config = function()
            require("plugins.configs.oil").setup()
        end,
    },
    { "nvim-tree/nvim-web-devicons", opts = {} },

    {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "mdx", "rmd" },
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("plugins.configs.render-markdown").setup()
        end,
    },

    {
        "ellisonleao/glow.nvim",
        cmd = "Glow",
        config = function()
            require("plugins.configs.glow").setup()
        end,
    },

    {
        "lervag/vimtex",
        ft = { "tex" },
        init = function()
            require("plugins.configs.vimtex").init()
        end,
    },

    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && yarn install",
        cmd = { "MarkdownPreview", "MarkdownPreviewToggle", "MarkdownPreviewStop" },
        ft = { "markdown" },
        init = function()
            require("plugins.configs.markdown-preview").init()
        end,
    },

    { "sainnhe/gruvbox-material" },
    { "EdenEast/nightfox.nvim",      lazy = false,        priority = 1000 },
    { "Shatur/neovim-ayu",           lazy = false,        priority = 1000 },
    { "catppuccin/nvim",             name = "catppuccin", lazy = false,   priority = 1000 },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("plugins.configs.lualine").setup()
        end,
    },

    {
        "rcarriga/nvim-notify",
        lazy = false,
        config = function()
            require("plugins.configs.notify").setup()
        end,
    },

    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        config = function()
            require("plugins.configs.noice").setup()
        end,
    },
    -------------------------------------------------------
    -- CODING ENGINE (LSP, Completion, Format, Run)
    -------------------------------------------------------

    -- 1. MASON (The Installer)
    -- This allows you to run :Mason and install "clangd", "pyright", "matlab-language-server"
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "clangd", "pyright", "matlab_ls" }, -- Auto-install these!
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup({})
                    end,
                },
            })
        end,
    },

    -- 2. COMPLETION (The Dropdown Menu)
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
            "hrsh7th/cmp-buffer",   -- Buffer text source
            "hrsh7th/cmp-path",     -- File path source
            "L3MON4D3/LuaSnip",     -- Snippets engine (required for cmp)
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),            -- Open menu
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Enter to confirm
                    ["<Tab>"] = cmp.mapping.select_next_item(),        -- Tab to go down
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),      -- Shift+Tab to go up
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" }, -- Prioritize LSP
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" },
                }),
            })
        end,
    },

    -- 3. CODE RUNNER (Compile & Run C++, Python, MATLAB)
    {
        "CRAG666/code_runner.nvim",
        config = function()
            require("code_runner").setup({
                filetype = {
                    python = "python3 -u",
                    -- Compiles C++ to a file named after the source, then runs it
                    cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
                    -- Runs MATLAB in batch mode (no GUI popups)
                    matlab = "matlab -batch \"run('$fileName')\"",
                },
            })
            -- Map <Space>r to Run Code
            vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = true })
        end,
    },
    {
        "kdheepak/lazygit.nvim",
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true, -- Close Neo-tree if it's the last window left
                enable_git_status = true,
                enable_diagnostics = true,

                -- VISUALS: Make it look like a clean sidebar
                default_component_configs = {
                    indent = {
                        indent_size = 2,
                        padding = 1, -- Extra padding for clarity
                        with_markers = true,
                        indent_marker = "│",
                        last_indent_marker = "└",
                    },
                    icon = {
                        folder_closed = "",
                        folder_open = "",
                        folder_empty = "󰜌",
                    },
                    name = {
                        use_git_status_colors = true,
                    },
                },

                filesystem = {
                    -- This makes it act like a "Project View"
                    bind_to_cwd = false,
                    follow_current_file = { enabled = true }, -- Highlight the file you are currently editing
                    use_libuv_file_watcher = true,            -- Auto-update when files change outside nvim

                    -- KEYMAPS INSIDE THE SIDEBAR
                    window = {
                        width = 20,
                        mappings = {
                            ["<CR>"] = "open",     -- Enter: Open file (replace current)
                            ["v"] = "open_vsplit", -- v: Open in side panel (Vertical Split)
                            ["s"] = "open_split",  -- s: Open in bottom panel (Horizontal Split)
                            ["t"] = "open_tabnew", -- t: Open in new tab
                        }
                    }
                },
            })

            -- GLOBAL HOTKEY: Space + b to toggle the sidebar (Like Zed's Cmd+B)
            vim.keymap.set('n', '<leader>b', ':Neotree toggle<CR>', { noremap = true, silent = true })
        end,
    }
}
