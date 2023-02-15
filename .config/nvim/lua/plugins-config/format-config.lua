require("lsp-format").setup {
    lua = {tab_width = 2},
    typescript = {tab_width = 4},
    yaml = { tab_width = 2},
    dart = { tab_width = 4},
}
require "lspconfig".gopls.setup { on_attach = require "lsp-format".on_attach }
