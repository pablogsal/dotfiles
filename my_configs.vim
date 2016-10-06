
let g:syntastic_check_on_wq = 0

" Remove anoying indentation reset when typing #
" Notice that this simbol (  ) is typed using Ctrl+V Ctrl+H
:inoremap # X#

" Do not show status mode
:set noshowmode

" Show invisible characters
:set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
:set showbreak=↪\ 


" Remap leader key
:let mapleader = "\\"
:let g:mapleader = "\\"


" Show line number
:set number
:set relativenumber


"Set omnicomplete using the jedy plugin
:let g:jedi#popup_on_dot = 0
:let g:jedi#auto_close_doc = 1

"Change vim-move lead key
:let g:move_key_modifier = 'C'

"Color settings (extra)
:hi CursorLine cterm=NONE ctermfg=black ctermbg=lightblue
:hi jediFat term=bold cterm=underline ctermfg=black ctermbg=lightgreen
:hi Search ctermbg=lightblue ctermfg=black
:hi SearchCurrent ctermbg=lightgreen ctermfg=black 

"====[ Make the 81st column stand out ]====================
highlight ColorColumn ctermbg=yellow
call matchadd('ColorColumn', '\%81v', 100)
