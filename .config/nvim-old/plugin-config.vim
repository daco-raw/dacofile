" HTML, JSX cerrar parentesis
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" Dashboar
" Default value is clap
let g:dashboard_default_executive ='fzf'

"  nerdtree
let NERDTreeShowHidden=0
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

"           Coc-snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

"  COC
"autocmd FileType python let b:coc_suggest_disable = 1
"autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@
let g:coc_disable_startup_warning = 1

" vim identado
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|','¦', '┆', '┊']

" Emmet
let g:user_emmet_leader_key=','

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" fugitive always vertical diffing
set diffopt+=vertical

" Highlight symbol under cursor on CursorHold
let $FZF_DEFAULT_OPTS='--layout=reverse'

" comentar por bloques
let g:NERDSpaceDelims = 1  " Agregar un espacio después del delimitador del comentario
let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
