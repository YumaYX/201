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

export YS_WORK_DIR='/work'
export YS_WORK_BACKUP='backup.tar.gz'
export YS_SANDBOX=/tmp/sandbox
export YS_TODAY_SANDBOX=${YS_SANDBOX}/$(date +%Y-%m-%d)

## COMMON
alias halt='sudo /usr/sbin/shutdown -h 0'

## BACKUP
temp_dir='/tmp'
alias mkdir_work="mkdir -p ${YS_WORK_DIR}"
alias delete_backup="rm -rf ${YS_WORK_DIR}/${YS_WORK_BACKUP} > /dev/null 2>&1"
alias just_backup="tar -C / -zcf ${temp_dir}/${YS_WORK_BACKUP} $(basename ${YS_WORK_DIR})"
alias move_backup="mv ${temp_dir}/${YS_WORK_BACKUP} ${YS_WORK_DIR}"
alias backup="delete_backup; just_backup && move_backup"

## SANDBOX
alias today_sandbox="mkdir -p ${YS_TODAY_SANDBOX}"
alias delete_empty="find ${YS_SANDBOX} -maxdepth 1 -type d -empty -delete > /dev/null 2>&1"
alias sandbox="today_sandbox; cd ${YS_TODAY_SANDBOX} && pwd"
alias clean="rm -rf ${YS_SANDBOX}/*; today_sandbox"


export PATH="${YS_WORK_DIR}/bin:$PATH"
