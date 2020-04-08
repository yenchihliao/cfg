# this command set your bash navigation key bindings to vi-style ones. Don't use this if you are not familiar this vim navigation.
set -o vi
#figlet "Welcome   back,   $USER"
#eval $(thefuck --alias)
export GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
## Shell style
## Learned from https://www.gnu.org/software/bash/manual/bashref.html#Controlling-the-Prompt
export PS1="\[\e[36m\]\u\[\e[m\]@\[\e[32m\][\w]\[\e[m\] \[\e[33m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$\[\e[m\] "
alias ls='ls -G'
alias ll='ls -l -G'
alias la='ls -la -G'
alias ptt='ssh bbsu@ptt.cc'
alias goodJson='python3.6 -m json.tool' ## $cat [json].json | goodJson ## $goodJson [json].json
alias findn='find . -name'
alias os='cat /etc/os-release'
alias tmuxat='tmux a -t'
alias diff='diff -y --suppress-common-lines'
alias myip='curl ifconfig.co/json > ~/tmp && cat ~/tmp | goodJson && rm ~/tmp'
alias solc='/usr/local/Cellar/solidity@5/0.5.15/bin/solc'
## solc = /usr/local/Cellar/solidity/0.6.0/bin/solc
