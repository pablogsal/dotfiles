curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
mkdir -p ~/.vim/temp_dirs/undodir
