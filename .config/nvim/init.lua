-- the main files
require("settings")
require("plugins")
require("maps")
-- the configuration files
require("configs.lsp-config")
require("configs.treesitter")
require("configs.telescope")
require("configs.toggleterm")
require("configs.gitsigns")
require("configs.null-ls")
-- setup for the icons
require("nvim-web-devicons").setup({ default = true })

-- Themes : uncomment the theme you want to use and comment the others
require("configs.catppuccin")
--require("configs.tokyonight")
--require("configs.kanagawa")
