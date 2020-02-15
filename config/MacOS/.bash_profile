export GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
## Shell style
## Learned from https://www.gnu.org/software/bash/manual/bashref.html#Controlling-the-Prompt
export PS1="\[\e[36m\]\u\[\e[m\]\[\e[33m\]+\j\[\e[m\]@\[\e[32m\][\w]\[\e[m\] "
alias ls='ls -G'
alias ll='ls -l -G'
alias la='ls -la -G'
alias ptt='ssh bbsu@ptt.cc'
alias goodJson='python3.6 -m json.tool' ## $cat [json].json | goodJson ## $goodJson [json].json
alias findn='find . -name' 
alias os='cat /etc/os-release'
alias tmuxat='tmux a -t'
alias mydiff='diff -y --suppress-common-lines'
alias myip='curl ifconfig.co/json > ~/tmp && cat ~/tmp | goodJson && rm ~/tmp'
alias solc='/usr/local/Cellar/solidity@5/0.5.15/bin/solc'
## solc = /usr/local/Cellar/solidity/0.6.0/bin/solc
