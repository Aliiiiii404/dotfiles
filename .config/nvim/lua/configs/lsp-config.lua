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

	local cmp = require("cmp")
	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end,
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		mapping = {
			["<C-p>"] = cmp.mapping.select_prev_item(),
			["<C-n>"] = cmp.mapping.select_next_item(),
			["<C-d>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.close(),
			["<CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Replace,
				select = true,
			}),
		},
		sources = {
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path" },
			{ name = "cmdline" },
		},
	})
end

-- add your language servers here
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
