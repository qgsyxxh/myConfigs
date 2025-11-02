local config = vim.lsp.config
local enable = vim.lsp.enable

config("lua_ls", {})
config("clangd", {})
config("ts_ls", {})
config("vue_ls", {})
config("rust_analyzer", {})
config("tailwindcss", {})

enable("lua_ls")
enable("clangd")
enable("ts_ls")
enable("vue_ls")
enable("rust_analyzer")
enable("tailwindcss")
