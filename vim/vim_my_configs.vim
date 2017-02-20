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

"Color settings (extra)
:hi CursorLine cterm=NONE ctermfg=black ctermbg=lightblue
:hi jediFat term=bold cterm=underline ctermfg=black ctermbg=lightgreen
:hi Search ctermbg=lightblue ctermfg=black
:hi SearchCurrent ctermbg=lightgreen ctermfg=black 
:hi Pmenu ctermbg=lightblue ctermfg=black
:hi PmenuSel ctermbg=lightgreen ctermfg=black

"Run yapf (autoformat) on exit.
:let g:formatters_python = ['yapf']
:let g:autoformat_verbosemode=1
:let g:formatter_yapf_style = 'pep8'
" :let g:formatdef_yapf =  "'yapf --style=\"{based_on_style:'.g:formatter_yapf_style.'}\" -l '.a:firstline.'-'.a:lastline"
:let g:formatdef_yapf =  "'yapf --style=\"$HOME/.dotfiles/vim_config_rc/auxiliar_config/yapf/style\" -l '.a:firstline.'-'.a:lastline"
" :autocmd BufWritePre *.py :Autoformat

"====[ Make the 81st column stand out ]====================
highlight ColorColumn ctermbg=yellow
call matchadd('ColorColumn', '\%81v', 100)



" airline options
 let g:airline_powerline_fonts=1
 let g:airline_left_sep=''
 let g:airline_right_sep=''
 let g:airline_theme='onedark'
 let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
 let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
 let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
 let g:airline#extensions#tabline#show_splits = 0

 let g:tsuquyomi_disable_default_mappings = 1
 let g:tsuquyomi_completion_detail = 1
 autocmd FileType typescript nmap <buffer> <leader>h : <C-u>echo tsuquyomi#hint()<cr>

 "syntastic options
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_python_checkers = ["pylint"]
 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0

 "Start NERDTree
 
 let g:NERDTreeWinPos = "left"
 autocmd vimenter * NERDTreeFind
 "Go to prevuous accessed window
 autocmd VimEnter * wincmd p
         "Close NERDTree if its the last thing of vim
         autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

             " Close all open buffers on entering a window if the only
             " buffer that's left is the NERDTree buffer
             function! s:CloseIfOnlyNerdTreeLeft()
               if exists("t:NERDTreeBufName")
                 if bufwinnr(t:NERDTreeBufName) != -1
                   if winnr("$") == 1
                     q
                   endif
                 endif
               endif
             endfunction


