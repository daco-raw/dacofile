-- Neovim API aliases
local set = vim.opt -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General
-----------------------------------------------------------
vim.g.mapleader = ' ' -- change leader to a comma
set.guifont = "Mononoki NF:h12"
set.mouse = 'a' -- enable mouse support
set.clipboard:append('unnamedplus') -- habilita el portapapeles del sistema.
set.swapfile = false -- don't use swapfile
set.wildmenu = true -- AutoCompletado para la barra de comandos.
--set.signcolumn = 'yes'			-- espacio entre la columna donde estan los numeros

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
set.termguicolors = true -- terminal color
set.syntax = 'on'
set.spelllang = 'en,es' -- Corregir palabras usando diccionarios EN y ES.
set.fileencoding = 'utf-8'
set.number = true -- show line number
set.relativenumber = true -- show line number
set.numberwidth = 1 -- Padding column number
set.lazyredraw = true
set.ruler = true -- avoid rewriting the buffer
set.hlsearch = true -- When highlighting of search matches is enabled.
set.ignorecase = true -- searches are case insensitive...
set.inccommand = 'split' -- Incrementallly show effects of commands, open split
set.laststatus = 2 -- show last status in buffer.
set.showmode = false -- show mode.
set.sidescrolloff = 999 -- hold cursor horizontally centered in the window.
set.incsearch = true -- incremental searching.
set.sw = 4 -- Space to tab
set.cursorline = true
set.autoindent = true
set.showmatch = true -- highlight matching parenthesis
set.autowrite = true
set.foldmethod = 'marker' -- enable folding (default 'foldmarker')
set.splitright = true -- vertical split to the right
set.splitbelow = true -- orizontal split to the bottom
set.ignorecase = true -- ignore case letters when search
set.smartcase = true -- ignore lowercase for the whole pattern
set.linebreak = true -- wrap on word boundary
set.wrap = false -- Continue on the next line if unsufficient columns (see linebreak)
set.shell = '/bin/zsh'

---- Memory, CPU ----
set.hidden = true -- enable background buffers
set.history = 100 -- remember n lines in history
set.lazyredraw = true -- faster scrolling
set.synmaxcol = 1000 -- max column for syntax highlight


vim.cmd [[set listchars=tab:\|\ ,trail:· list]] -- Put · when placing space
vim.cmd [[highlight Normal ctermbg=NONE]]
