let mapleader=" "

" search
map <Leader>m :NERDTreeFind<CR>
nmap <Leader>s <Plug>(easymotion-s2)
map <Leader>f :Files<CR>
map <Leader>F :Rg <CR>

"config custom -DCdev
nmap <Leader>x :w<CR>
nmap <Leader>X :w!<CR>
nmap <Leader>z :q<CR>
nmap <Leader>Z :q!<CR>
inoremap ii <ESC>
vnoremap ii <ESC>
inoremap iI <ESC>A
nmap <Leader>M :Sex!<CR>
nmap <Leader>r :source %<CR>
vnoremap <Leader>s :!sort<CR>
nnoremap Y y$

nnoremap <Leader>n :set wrap<CR>
nnoremap <Leader>N :set nowrap<CR>

" Move
nmap <Leader>w <Leader><Leader>w
nmap <Leader>e <Leader><Leader>e
nmap <Leader>b <Leader><Leader>b

" Tabs navigation
nnoremap <Leader>j 10<CR>
nnoremap <Leader>; 20<CR>
nnoremap <Leader>k 10-<CR>
nnoremap <Leader>p 20-<CR>
" Visual mode nav
vnoremap <Leader>j 10<CR>
vnoremap <Leader>; 20<CR>
vnoremap <Leader>k 10-<CR>
vnoremap <Leader>p 20-<CR>

" Resize
nnoremap <Leader>= <C-w>5+
nnoremap <Leader>- <C-w>5-
nnoremap <Leader>> 10<C-W>>
nnoremap <Leader>< 10<C-W><

"   Visual mode |
"  keys         |
"               |
"    vis        |
"    vip        |
"    viw        |
" ---------------

" Buffers
map <Leader>vu :Buffers<CR>

" comentarios por bloque
"
" tecla <Leader>cc   -> para comentar bloques
" ya seleccionados

" Run Current file for javascript
nnoremap <Leader>1 :!node %<CR>
nnoremap <Leader>2 :!python %<CR>
nnoremap <Leader>3 :!sh %<CR>

" Testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" Use <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Add template html a bufer
nnoremap ,html :-1read $HOME/.config/nvim/skeleton.html<CR>
inoremap ;gui <++>
inoremap <Leader>l<TAB> <Esc>/<++><Enter>"_c4l
vnoremap <Leader>l<TAB> <Esc>/<++><Enter>"_c4l
nmap <Leader>l<TAB> <Esc>/<Enter>"_c4l

" Terminal
" -------------------------------------------------------------------------------------
set splitright
function! OpenTerminal()
  " move to reght most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum , "&bufType", "not found")

  if bufType == "terminal"
    " Close terminal
    execute "q"
  else
    " open terminal
    belowright split term://zsh
    "execute "vsp term://zsh"

    " Turn off numbers
    execute "set nonu"
    execute "set nornu"

    " Toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " Set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h <C-\\> <C-n> <C-w> <C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\ <C-n>:q<Cr>"
    execute "tnoremap <buffer> <C-\\> <C-\\ <C-n><Cn>"

    startinsert!
  endif
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>
" -------------------------------------------------------------------------------------

" Prettier
vmap <leader>a  <Plug>(coc-format-selected)
nmap <leader>a :Prettier<CR>
