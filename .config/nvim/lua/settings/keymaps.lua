local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

-- custom mapping
mapper('n', '<leader>x', ':w <CR>') --{{{
mapper('n', '<leader>X', ':w! <CR>')
mapper('n', '<leader>z', ':q <CR>')
mapper('n', '<leader>Z', ':q! <CR>')
mapper('i', 'ii', '<ESC>')
mapper('v', 'ii', '<ESC>')
mapper('i', 'iI', '<ESC>A')

mapper('n', 'tt', ':t. <CR>')
mapper('n', 'Y', 'y$')

mapper('n', '<leader>n', ':set wrap <CR>')
mapper('n', '<leader>N', ':set nowrap <CR>')

mapper('n', '<leader>r', ':source %<CR>')

mapper('n', '<leader>C', ':LuaCacheLog <CR>') --}}}

-- Tabs navigation
mapper('n', '<leader>j', '10<CR>') --{{{
mapper('n', '<leader>;', '20<CR>')
mapper('n', '<leader>k', '10-<CR>')
mapper('n', '<leader>p', '20-<CR>')
mapper('v', '<leader>j', '10<CR>')
mapper('v', '<leader>;', '20<CR>')
mapper('v', '<leader>k', '10-<CR>')
mapper('v', '<leader>p', '20-<CR>') --}}}

-- tmux
mapper('n', '<c-l>', '<c-w>l')  -- >
mapper('n', '<c-k>', '<c-w>k')  -- ^
mapper('n', '<c-j>', '<c-w>j')  -- <
mapper('n', '<c-h>', '<c-w>h')  -- V

--{{{
--mapper('n', '<c-k>', '<c-w>k') --{{{

-- Resize
mapper('n', '<leader>=', '<c-w>5+') --{{{
mapper('n', '<leader>-', '<c-w>5-')
mapper('n', '<leader>>', '10<c-w>>')
mapper('n', '<leader><', '10<c-w><') --}}}

-- Run current file and Testing
mapper('n', '<leader>1', ':!node %<CR>') --{{{
mapper('n', '<leader>2', ':!python %<CR>')
mapper('n', '<leader>3', ':!sh %<CR>')


---------------------------------
------------ IDE CONFIG ---------
---------------------------------
-- TeleScope{{{
mapper('n', '<leader>f', ':Telescope find_files<CR>')
mapper('n', '<leader>F', ':Telescope live_grep<CR>')
mapper('n', '<leader>vu', ':Telescope buffers<CR>')
-----tree lateral
mapper('n', '<leader>m', ':Neotree<CR>')
---- Easy-Motion ----
mapper('n', '<leader>s', '<Plug>(easymotion-s2)')
mapper('n', '<leader>w', '<leader><leader>w')
mapper('n', '<leader>e', '<Leader><Leader>e')
mapper('n', '<leader>b', '<Leader><Leader>b')
---- lsp format ----
--mapper('n', '<leader>a', ':lua vim.lsp.buf.formatting_sync() <cr>') deprecate
mapper('n', '<leader>a', ':lua vim.lsp.buf.format() <cr>')
---- Harpoon ----
mapper('n', '<leader>H', ':lua require("harpoon.ui").toggle_quick_menu() <cr>')
mapper('n', '<leader>h', ':lua require("harpoon.mark").add_file() <cr>')
mapper('n', '<leader>]', ':lua require("harpoon.ui").nav_next() <cr>')
mapper('n', '<leader>[', ':lua require("harpoon.ui").nav_prev() <cr>')

--Markdown
mapper('n', '<leader>M', ':MarkdownPreviewToggle <CR>')

-- Rest Client
mapper('n', '<leader>R', ':lua require("rest-nvim").run() <cr>')

-- debugging
mapper('n', '<leader>t', ':TroubleToggle document_diagnostics <CR>')
mapper('n', '<leader>T', ':TroubleToggle workspace_diagnostics <CR>')

--}}}

----- Tags close html -----
--{{{
mapper('i', '<na', '<nav></nav>')
mapper('i', '<sect', '<section></section>')
mapper('i', '<art', '<article></article>')
mapper('i', '<asid', '<aside></aside>')
mapper('i', '<h1', '<h1></h1>')
mapper('i', '<h2', '<h2></h2>')
mapper('i', '<h3', '<h3></h3>')
mapper('i', '<h4', '<h4></h4>')
mapper('i', '<h5', '<h5></h5>')
mapper('i', '<h6', '<h6></h6>')
mapper('i', '<heade', '<header></header>')
mapper('i', '<foot', '<footer></footer>')
-----------------------------------------
mapper('i', '<p', '<p></p>')
mapper('i', '<ol', '<ol></ol>')
mapper('i', '<li', '<li></li>')
mapper('i', '<ul', '<ul></ul>')
mapper('i', '<dl', '<dl></dl>')
mapper('i', '<dt', '<dt></dt>')
mapper('i', '<div', '<div></div>')
mapper('i', '<>', '<></>')
mapper('i', '<but', '<button></button>')
----------------------------------------
mapper('i', '<a', '<a href=""></a>')
mapper('i', '<span', '<span></span>')
mapper('i', '<img', '<img src="" />')
mapper('i', '<form', '<form></form>')
mapper('i', '<lab', '<label></label>')
mapper('i', '<cod', '<code></code>') --}}}
