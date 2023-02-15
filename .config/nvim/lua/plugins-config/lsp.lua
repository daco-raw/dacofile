local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()

-- color
local lsp_color = require("lsp-colors")
lsp_color.setup({
	Error = "#db4b4b",
	Warning = "#e0af68",
	Information = "#0db9d7",
	Hint = "#10B981"
})


-- more
local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
	formatting.black, -- "python"
	formatting.clang_format, -- "c", "cpp", "cs", "java"
	formatting.eslint_d, -- "javascript", "javascriptreact", "typescript", "typescriptreact", "vue"
	formatting.json_tool, -- "json"
	formatting.perltidy, -- "perl"
	formatting.phpcsfixer, --  "php"
	formatting.prettier, -- "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html"
	formatting.scalafmt, -- scala
	formatting.rustfmt, -- rust
	diagnostics.flake8 -- diagnostico de python
}

null_ls.setup({
	sources = sources,
	on_attach = function(client)
		if client.supports_method "textDocument/formatting" then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({timeout_ms = 1000})")
		end
	end,
})
