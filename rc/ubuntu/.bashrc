figlet "Welcome   back,   $USER"
eval $(thefuck --alias)
export GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
## Shell style
## Learned from https://www.gnu.org/software/bash/manual/bashref.html#Controlling-the-Prompt
export PS1="\[\e[36m\]\u\[\e[m\]\[\e[33m\]+\j\[\e[m\]@\[\e[32m\][\w]\[\e[m\] "
alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -la --color'
alias csie='ssh r07944023@linux3.csie.org'
alias lab='ssh -p 22 yen@140.112.29.206'
alias ptt='ssh bbsu@ptt.cc'
alias goodJson='python3 -m json.tool' ##cat [json].json | goodJson
alias findn='find . -name' 
alias os='cat /etc/os-release'
alias tmuxat='tmux a -t'
alias mydiff='diff -y --suppress-common-lines'
alias myip='curl ifconfig.co/json > ~/tmp && cat ~/tmp | goodJson && rm ~/tmp'
