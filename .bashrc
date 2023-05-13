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
export YS_SANDBOX=/tmp/sandbox/$(date +%Y-%m-%d)
alias sandbox="cd $YS_SANDBOX && pwd"
alias halt='sudo /usr/sbin/shutdown -h 0'

