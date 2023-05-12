# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
today=$(date +%Y-%m-%d)
mkdir -p /tmp/sandbox/$today
