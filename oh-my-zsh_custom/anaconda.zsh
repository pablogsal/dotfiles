# Set anaconda installation

export PATH=$PATH:/home/pablogsal/anaconda3/bin
alias python3=/home/pablogsal/anaconda3/bin/python

# Set virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/home/pablogsal/anaconda3/bin/python
source /home/pablogsal/anaconda3/bin/virtualenvwrapper.sh

# Set pythonrc configuration file

export PYTHONSTARTUP=/home/pablogsal/.pythonrc

# Add python custom path

export PYTHONPATH="$PYTHONPATH:/home/pablogsal/anaconda3/lib/python3.5/site-packages:/home/pablogsal/.custom_python"
