local M = {}

local blocked = { "ayu", "ayu-mirage", "blue", "carbonfox",
    "catppuccin", "catppuccin-frappe", "catppuccin-macchiato", "catppuccin-mocha",
    "darkblue", "delek", "desert", "elflord", "evening",
    "habamax", "industry", "koehler", "murphy", --"nightfox",
    "nordfox", "pablo", "peachpuff", "ron",     --"slate", --"sorbet",
    "torte", "unokai", "vim", "zaibatsu", "zellner"
}

local blocked_set = {}
for _, name in ipairs(blocked) do
    blocked_set[name] = true
end

function M.setup()
    local telescope = require("telescope")
    local pickers = require("telescope.pickers")
    local finders = require("telescope.finders")
    local previewers = require("telescope.previewers")
    local actions = require("telescope.actions")
    local state = require("telescope.actions.state")
    local conf = require("telescope.config").values

    telescope.setup({
        pickers = {
            colorscheme = {
                enable_preview = true,
                sorting_strategy = "ascending",
                -- ignore_builtins = true,
                sorter = require("telescope.sorters").get_generic_fuzzy_sorter(),

                finder = finders.new_table({
                    results = vim.tbl_filter(function(c)
                        return not blocked_set[c]
                    end, vim.fn.getcompletion("", "color")),
                }),
            },
        },
    })
    pcall(telescope.load_extension, "fzf")
end

return M
