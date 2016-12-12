set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

:call pathogen#infect('~/.dotfiles/vim_runtime_custom/{}')

try
source ~/.dotfiles/vim_my_configs.vim
catch
endtry

