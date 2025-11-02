return {
	'saghen/blink.cmp',
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '1.*',
	opts = {
		keymap = { preset = 'super-tab' },
		appearance = {
			nerd_font_variant = 'mono'
		},
		completion = { documentation = { auto_show = true } },
		sources = {
			default = { 'lsp', 'snippets', 'path', 'buffer' },
		},
		signature = {
			enabled = true,
		}
	},
	opts_extend = { "sources.default" },
}
