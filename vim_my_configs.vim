"Include stuff on custom directory
:call pathogen#infect('~/.dotfiles/vim_runtime_custom/{}')


"Deactivate syntastic on wq
let g:syntastic_check_on_wq = 0

" Remove anoying indentation reset when typing #
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

" Show line number
:set number
:set relativenumber


"Set omnicomplete using the jedy plugin
:let g:jedi#popup_on_dot = 1
:let g:jedi#auto_close_doc = 1
:let g:jedi#use_tabs_not_buffers = 1


"Remap CtrlP to <Ctrl-p> and delete the <Ctrl-b> map
let g:ctrlp_map = '<c-p>'
:nunmap <C-B>

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

"Color settings (extra)
:hi CursorLine cterm=NONE ctermfg=black ctermbg=lightblue
:hi jediFat term=bold cterm=underline ctermfg=black ctermbg=lightgreen
:hi Search ctermbg=lightblue ctermfg=black
:hi SearchCurrent ctermbg=lightgreen ctermfg=black 
:hi Pmenu ctermbg=lightblue ctermfg=black
:hi PmenuSel ctermbg=lightgreen ctermfg=black

"Run yapf (autoformat) on exit.
:let g:formatters_python = ['yapf']
:autocmd BufWritePre *.py :Autoformat

"====[ Make the 81st column stand out ]====================
highlight ColorColumn ctermbg=yellow
call matchadd('ColorColumn', '\%81v', 100)

" "Start NERDTree
" let g:NERDTreeWinPos = "left"
" autocmd vimenter * NERDTree
" "Go to prevuous accessed window
" autocmd VimEnter * wincmd p
"         "Close NERDTree if its the last thing of vim
"         autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

"             " Close all open buffers on entering a window if the only
"             " buffer that's left is the NERDTree buffer
"             function! s:CloseIfOnlyNerdTreeLeft()
"               if exists("t:NERDTreeBufName")
"                 if bufwinnr(t:NERDTreeBufName) != -1
"                   if winnr("$") == 1
"                     q
"                   endif
"                 endif
"               endif
"             endfunction
