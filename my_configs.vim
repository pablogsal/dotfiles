
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
