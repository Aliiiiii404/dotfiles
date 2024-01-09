require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})
require("mason-lspconfig").setup({
	ensure_installed = {
		--lsp
		"golangci_lint_ls",
		"lua_ls",
		"bashls",
		"pyright",
		"pyre",
		"pyright",
		"rust_analyzer",
		"tsserver",
		"vimls",
		"yamlls",
		"cssmodules_ls",
		--formatter
		"pyre",
		"ast_grep",
	},
})

local lspconfig = require("lspconfig")
local on_attach = function(_, _)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

	require("compe").setup({
		enabled = true,
		autocomplete = true,
		debug = false,
		min_length = 1,
		preselect = "enable",
		throttle_time = 80,
		source_timeout = 200,
		resolve_timeout = 800,
		incomplete_delay = 400,
		max_abbr_width = 100,
		max_kind_width = 100,
		max_menu_width = 100,
		documentation = {
			border = { "", "", "", " ", "", "", "", " " }, -- the border option is the same as `|help nvim_open_win|`
			winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
			max_width = 120,
			min_width = 60,
			max_height = math.floor(vim.o.lines * 0.3),
			min_height = 1,
		},
		source = {
			path = true,
			buffer = true,
			nvim_lsp = true,
			nvim_lua = true,
			vsnip = true,
			ultisnips = true,
			luasnip = true,
		},
	})

	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end

lspconfig.gopls.setup({
	on_attach = on_attach,
})
lspconfig.lua_ls.setup({
	on_attach = on_attach,
})
lspconfig.bashls.setup({
	on_attach = on_attach,
})
lspconfig.pyright.setup({
	on_attach = on_attach,
})
lspconfig.pyre.setup({
	on_attach = on_attach,
})
lspconfig.rust_analyzer.setup({
	on_attach = on_attach,
})
lspconfig.tsserver.setup({
	on_attach = on_attach,
})
lspconfig.vimls.setup({
	on_attach = on_attach,
})
lspconfig.yamlls.setup({
	on_attach = on_attach,
})
lspconfig.cssmodules_ls.setup({
	on_attach = on_attach,
})
