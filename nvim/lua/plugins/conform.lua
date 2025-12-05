return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			lua = {
				"lua_ls",
				format_on_save = true
			},
			c = {
				"clang-format",
				format_on_save = true
			},
			cpp = {
				"clang-format",
				format_on_save = true
			},
			javascript = {
				"ts_ls",
				format_on_save = true
			},
			typescript = {
				"ts_ls",
				format_on_save = true
			},
			rust = {
				"rust_analyzer",
				format_on_save = true
			},
			go = {
				"gopls",
				format_on_save = true
			}
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters = {
			["clang-format"] = {
				prepend_args = { "--style=Google" },
			},
		},
	},
}
