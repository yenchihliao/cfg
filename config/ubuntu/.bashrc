#figlet "Welcome   back,   $USER"
#eval $(thefuck --alias)
export GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
## Shell style
## Learned from https://www.gnu.org/software/bash/manual/bashref.html#Controlling-the-Prompt
export PS1="\[\e[36m\]\u\[\e[m\]\[\e[33m\]+\j\[\e[m\]@\[\e[32m\][\w]\[\e[m\] "
export TERM=xterm-256color
alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -la --color'
alias ptt='ssh bbsu@ptt.cc'
alias goodJson='python3.6 -m json.tool' ## $cat [json].json | goodJson ## $goodJson [json].json
alias findn='find . -name'
alias os='cat /etc/os-release'
alias tmuxat='tmux a -t'
alias diff='diff -y --suppress-common-lines'
alias myip='curl ifconfig.co/json > ~/tmp && cat ~/tmp | goodJson && rm ~/tmp'
