return {
	{ -- You can easily change to a different colorscheme.
		-- Change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		config = function()
			---@diagnostic disable-next-line: missing-fields
			require("tokyonight").setup({
				styles = {
					comments = { italic = false }, -- Disable italics in comments
				},
			})

			-- Load the colorscheme here.
			-- Like many other themes, this one has different styles, and you could load
			-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
			--vim.cmd.colorscheme 'tokyonight-night'
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
		config = function()
			---@diagnostic disable-next-line: missing-fields
			require("onedarkpro").setup({
				colors = {
					bg = "#1F1F19",
					--vivid = { bg = '#1F1F19' },
				},
			})
			--vim.cmd.colorscheme 'vaporwave'
		end,
	},
	{
		"Mofiqul/vscode.nvim",
		priority = 1000,
		config = function()
			---@diagnostic disable-next-line: missing-fields
			--vim.cmd.colorscheme 'vscode'
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme 'kanagawa-wave'
		end,
	},
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme 'catppuccin-mocha'
		end,
	},
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_foreground = "mix"
			vim.g.gruvbox_material_background = "hard"
			--vim.cmd.colorscheme 'gruvbox-material'
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme 'nordic'
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme 'carbonfox'
		end,
	},
	{
		"ofirgall/ofirkai.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("ofirkai")
		end,
	},
	{
		"oxfist/night-owl.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme 'night-owl'
		end,
	},
}
