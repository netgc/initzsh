hopt -s histappend
PROMPT_COMMAND='history -a'

alias grep='grep --color=auto -i'
alias vi='vim'
alias ll='ls  --color=auto -haltr'
alias dstat='dstat -cdlmnpsy --top-io --top-mem --top-cpu --top-bio'

export PATH=$PATH:/sbin:.
export TMOUT=10000
export HISTCONTROL=ignoreboth

export PS1="\[\e[00;32m\][\[\e[0m\]\[\e[00;31m\]\u\[\e[0m\]\[\e[00;32m\]@\[\e[0m\]\[\e[00;33m\]\H:\[\e[0m\]\[\e[00;35m\]\w\[\e[0m\]\[\e[00;32m\]\A]\[\e[0m\]\[\e[00;36m\]\\$\[\e[0m\]"

function mkcd(){
    mkdir -p $1
        cd $1
}
#service $1 restart
function rs(){
    service $1 restart
}
#rm -rf
function fuck(){
    rm -rf $1
}
#chkconfig
function chon(){
    chkconfig $1 on
}

history advanced command

export HISTCONTROL=ignorespace

ignorespace  ignore command starts with space
ignoredups
ignoreboth  ignore space and duplicate
