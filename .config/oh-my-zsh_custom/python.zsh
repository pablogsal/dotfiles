export PATH=$PATH:~/.pyenv/bin

eval "$(pyenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv virtualenv-init -)"

export PATH=$PATH:~/.local/bin

export PYTHONSTARTUP=$HOME/.pythonrc
