# Set anaconda installation

export PATH=$PATH:/home/pgalindo3/anaconda3/bin
alias python3=/home/pgalindo3/anaconda3/bin/python

# Set virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/home/pgalindo3/anaconda3/bin/python
source /home/pgalindo3/anaconda3/bin/virtualenvwrapper.sh

# Set pythonrc configuration file

export PYTHONSTARTUP=/home/pgalindo3/.pythonrc

# Add python custom path

export PYTHONPATH="$PYTHONPATH:/home/pgalindo3/anaconda3/lib/python3.5/site-packages:/home/pgalindo3/.custom_python"
