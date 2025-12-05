return {

    {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- enable truecolor
        vim.opt.termguicolors = true

        -- nvim-tree setup
        require("nvim-tree").setup({
            sort = { sorter = "case_sensitive" },
            view = { width = 30, side = "left" },
            renderer = { group_empty = true },
            filters = { dotfiles = true },
        })
    end,
    },

}
