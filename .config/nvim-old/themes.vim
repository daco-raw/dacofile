"----------------------------------------
"----------------------------------------
"           THEME                       |
"----------------------------------------

"     OCEANEC NEXT
"colorscheme OceanicNext
"let g:airline_theme='oceanicnext'

"-----------------------------------------

"     Gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark ="medium"

"-----------------------------------------

"     OneDark
"let g:onedark_hide_endofbuffe=1
"let g:onedark_termcolors=16
"let g:airline_theme='onedark'
"colorscheme onedark

"------------------------------------------

" LightLine barStatus
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '|',
      \   'right': '|'
      \ }
      \}
