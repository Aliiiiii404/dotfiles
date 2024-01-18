-- Lazy.nvim plugin manager setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
	-- Welcome screen alpha-nvim
	{
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").opts)
		end,
	},

	-- Icons
	"kyazdani42/nvim-web-devicons",

	-- Colorschemes
	---- kanagawa
	"rebelot/kanagawa.nvim",
	---- tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	---- catppuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	-- Statusline : the line at the bottom of the screen that shows mode, file name, etc.
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("configs.lualine")
		end,
		dependencies = { "nvim-web-devicons" },
	},

	--LSP and error messages
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},

	--cmp for autocompletion and snippet completions (works with LSP)
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- noice of notifications, cmdline and popupmenu
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("configs.treesitter")
		end,
	},
	{ "windwp/nvim-ts-autotag", after = "nvim-treesitter" },

	-- File manager
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},

	-- Show colors in css code like : #ffffff
	{
		"norcalli/nvim-colorizer.lua",
	},

	-- toggle terminal
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			function()
				require("configs.toggleterm")
			end,
		},
	},

	-- Wich key
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
		},
	},

	-- Git
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("configs.gitsigns")
		end,
	},

	-- to comment code easily using leader + gc in visual mode
	{ "tpope/vim-commentary" },

	-- autopairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},

	-- null-ls for code formatting
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("configs.null-ls")
		end,
		requires = { "nvim-lua/plenary.nvim" },
	},
	{ "mhartington/formatter.nvim" },

	--end of lazy setup
})
