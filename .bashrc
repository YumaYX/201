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

export GREP_OPTIONS='--color=auto'
#export RUBY_YJIT_ENABLE=1
alias halt='sudo /usr/sbin/shutdown -h 0'
alias backup="mv /work/sandbox /tmp; tar -C / -zcf /tmp/backup.tar.gz work"

sandbox_dir="/work/sandbox/$(date +%Y-%m-%d)"
alias sandbox="mkdir -p ${sandbox_dir}; cd ${sandbox_dir} && pwd"

export PATH="/work/bin:$PATH"
