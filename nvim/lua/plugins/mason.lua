return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"clangd",
			"ts_ls",
			"vue_ls",
			"rust_analyzer",
			"tailwindcss"
		},
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			}
		},
		{
			"neovim/nvim-lspconfig",
			event = { "BufReadPre", "BufNewFile" },
		}
	},
}
