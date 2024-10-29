return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		-- enabled = false,
		enabled = false,
		priority = 1000,
		opts = {
			flavour = "frappe", -- latte, frappe, macchiato, mocha
			background = { -- :h background
				light = "latte",
				dark = "frappe",
			},
			transparent_background = false, -- disables setting the background color.
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = true, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.25, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = { "bold" },
				functions = { "italic" },
				keywords = {},
				strings = {},
				variables = { "bold" },
				numbers = { "bold" },
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			-- color_overrides = {},
			color_overrides = {
				-- frappe = {
					-- 	text = "#F4CDE9",
					-- 	subtext1 = "#DEBAD4",
					-- 	subtext0 = "#C8A6BE",
					-- 	overlay2 = "#B293A8",
					-- 	overlay1 = "#9C7F92",
					-- 	overlay0 = "#866C7D",
					-- 	surface2 = "#705867",
					-- 	surface1 = "#5A4551",
					-- 	surface0 = "#44313B",
					--
					-- 	base = "#352939",
					-- 	mantle = "#211924",
					-- 	crust = "#1a1016",
					-- },
				},
				custom_highlights = {},
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = true,

					mini = {
						enabled = true,
						indentscope_color = "",
					},
					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
				},
			},
			config = function()
				require("catppuccin").setup(opts)
				vim.cmd([[colorscheme catppuccin]])
			end,
		},
		{
			"rebelot/kanagawa.nvim",
			-- enabled = true,
			priority = 1000,
			opts = {
				transparent = true,
				dimInactive = false,
				background = {               	-- map the value of 'background' option to a theme
					dark = "wave",           -- try "dragon" !
					light = "dragon",
				},
			},
			config = function()
				require("kanagawa").setup(opts)
				vim.cmd([[colorscheme kanagawa-dragon]])
			end,
		},
		{
			"kepano/flexoki-neovim",
			enabled = false,
			name = 'flexoki',
			priority = 1000,
			config = function()
				require("flexoki").setup()
				vim.cmd('colorscheme flexoki-dark')
			end,
		},
	}