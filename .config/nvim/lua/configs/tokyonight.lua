local status, tokyonight = pcall(require, "tokyonight")

if not status then
	return
end

require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	transparent = false, -- Enable this to disable setting the background color
	background_transparent = false, -- If enable, the normal background color is transparent
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		-- sidebars = "normal", -- style for sidebars, see below
		-- floats = "dark", -- style for floating windows
	},
})
vim.cmd.colorscheme("tokyonight")
