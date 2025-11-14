return {
	"rainLyn/leetcode.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		cn = {
			enabled = true,
			translator = true,
			translate_problems = true,
		},

		storage = {
			home = vim.fn.expand("~/CODE/leetcode"),
			cache = vim.fn.expand("~/CODE/leetcode/.cache"),
		},

		injector = {
			["cpp"] = {
				imports = function()
					return { "#include <stack>", "#include <queue>", "#include <vector>", "#include <string>",
						"using namespace std;" }
				end,
			},
		}
	}
}
