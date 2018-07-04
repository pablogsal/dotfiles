"Cos-i) Remove anoying indentation reset when typing #
" Notice that this simbol (  ) is typed using Ctrl+V Ctrl+H
:inoremap # X#

" Do not show status mode
:set noshowmode

" Show invisible characters
:set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
:set showbreak=↪\ 

"Eliminate delay to normal mode
set timeoutlen=1000 ttimeoutlen=0

" Remap leader key
:let mapleader = ","
:let g:mapleader = ","

" Remap jk to esc
:imap jk <Esc>

" j and k over visual lines

nnoremap k gk
nnoremap j gj

" Show line number
:set number
:set relativenumber


"Remap CtrlP to <Ctrl-p> and delete the <Ctrl-b> map
" let g:ctrlp_map = '<c-p>'
" :nunmap <C-B>

"VIM HARD MODE
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

"Change vim-move lead key
:let g:move_key_modifier = 'C'

""Color settings (extra)
":hi CursorLine cterm=NONE ctermfg=black ctermbg=lightblue
":hi jediFat term=bold cterm=underline ctermfg=black ctermbg=lightgreen
":hi Search ctermbg=lightblue ctermfg=black
":hi SearchCurrent ctermbg=lightgreen ctermfg=black 
":hi Pmenu ctermbg=lightblue ctermfg=black
":hi PmenuSel ctermbg=lightgreen ctermfg=black

"====[ Make the 81st column stand out ]====================
highlight ColorColumn ctermbg=yellow
call matchadd('ColorColumn', '\%81v', 100)

" airline options
 let g:airline_powerline_fonts=1
 let g:airline_left_sep=''
 let g:airline_right_sep=''

set clipboard=unnamed


