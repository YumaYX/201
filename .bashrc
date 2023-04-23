# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH


# User specific aliases and functions
PS1='[\u@\h \w] $ '
today=$(date +%Y-%m-%d)
alias sandbox="cd /work/sandbox/$today"
alias halt='sudo /usr/sbin/shutdown -h 0'

# docker
rubyversion=3.2.1
rworkdir='/usr/src/rapp'
which docker > /dev/null && alias dexec='docker run --rm -v $(pwd):${rworkdir} -w ${rworkdir} ruby:${rubyversion}'
which docker > /dev/null && alias druby='docker run -it --rm -v $(pwd):${rworkdir} -w ${rworkdir} ruby:${rubyversion} ruby'