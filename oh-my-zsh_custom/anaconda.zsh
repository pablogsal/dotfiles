# Set anaconda installation

export PATH=$PATH:$HOME/anaconda3/bin
#export LD_LIBRARY_PATH=$HOME/anaconda3/lib
alias python3=$HOME/anaconda3/bin/python

# Set virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=$HOME/anaconda3/bin/python
source $HOME/anaconda3/bin/virtualenvwrapper.sh

# Set pythonrc configuration file

export PYTHONSTARTUP=$HOME/.pythonrc

# Add python custom path

export PYTHONPATH="$PYTHONPATH:$HOME/anaconda3/lib/python3.5/site-packages:$HOME/.custom_python"
