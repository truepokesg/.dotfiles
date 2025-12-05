return {
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local db = require('dashboard')

            db.setup({
                theme = 'doom',
                shortcut_type = 'letter',
                change_to_vcs_root = true,
                hide = {
                    statusline = false,
                    tabline = false,
                    winbar = false,
                },
                config = {
                    week_header = {
                        enable = false,
		},
                    header = {
                        '',
                        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
                        '⠀⠀⠀⠀⢀⡤⠖⠋⠉⠉⠉⠉⠙⠲⣦⣀⠀⠀⠀⠀⠀',
                        '⠀⠀⠀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣦⡀⠀⠀⠀',
                        '⠀⠀⡼⢁⡠⢼⠁⠀⢱⢄⣀⠀⠀⠀⠀⠀⠎⢿⡄⠀⠀',
                        '⠀⣸⠁⠀⣧⣼⠀⠀⣧⣼⠉⠀⠀⠀⠀⠀⠐⢬⣷⠀⠀',
                        '⡼⣿⢀⠀⣿⡟⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢹⣧⠀',
                        '⣇⢹⠀⠁⠈⠀⠉⠃⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⡰⢸⡇',
                        '⠙⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣏⣈⣉⣤⠿⠁',
                        '⠀⣠⣾⣿⠤⡀⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⣅⠀⠀',
                        '⢰⣧⣿⣿⣿⣦⣉⡐⠒⠒⢲⣿⣿⣿⣿⣿⣿⣶⣿⣧⠀',
                        '⠘⠿⢿⣿⣿⣿⡿⠿⠛⠿⠿⠿⣿⣿⣿⣿⣿⣿⡿⠟⠀',
                        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⠀⠀⠀',
                        '',
			"oh Sayel, you're back!", 
                        '',
                    },
                    center = {
                        {
                            icon = "  ",
                            desc = "Recent files        ",
                            key = "r",
                            action = "Telescope oldfiles",
			    key_format = "%s",
                        },
			{
                            icon = "  ",
                            desc = "New file        ",
                            key = "n",
                            action = "ene | startinsert",
			    key_format = "%s",
                        },

			{
                            icon = "  ",
                            desc = "Find file           ",
                            key = "f",
                            action = "Telescope find_files",
			    key_format = "%s",
                        },
                	{
                            icon = "  ",
                            desc = "File browser        ",
                            key = "b",
                            action = "Oil",
			    key_format = "%s",
                        },
                        {
                            icon = "  ",
                            desc = "Config              ",
                            key = "c",
                            action = "edit ~/.config/nvim/init.lua",
			    key_format = "%s",
                        },
                        {
                            icon = "  ",
                            desc = "Quit                ",
                            key = "q",
                            action = "qa",
			    key_format = "%s",
                        },
                    },
                    footer = {
                        '',
                        'stay swaggy :)',
                        '',
                    },
                },
            })
	    -- === COLORING SECTION ===
            -- ASCII header color (Kirby pink)
            vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ff7eb6", bold = true })
	    vim.api.nvim_set_hl(0, "DashboardWelcome", { fg = "#f9e2af", bold = true })
	    vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#7fdbff", italic = true })
        end
    },
}
