# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
export PATH="/work/bin:$PATH"

today=$(date +%Y-%m-%d)
mkdir -p /work/sandbox/$today
