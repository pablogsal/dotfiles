". check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.vim_config_rc/plugged')

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'

" Programming
Plug 'tpope/vim-commentary'

" Completion
Plug 'Valloric/YouCompleteMe'

" File types
Plug 'tpope/vim-git'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'tpope/vim-markdown'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'

call plug#end()

