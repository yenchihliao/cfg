# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="wezm"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# FZF
export FZF_BASE="/opt/homebrew/bin/fzf"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    z # Faster and smarter cd command
    zsh-autosuggestions # searches command history
    zsh-syntax-highlighting
    command-not-found
    themes
    zsh-vi-mode # Use vim key bindings
    fzf
)

# Overwrite vi-mode ^r with fzf ^r
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')

bindkey "^y" autosuggest-accept
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

# yen: for WSL
# case $(uname -a) in
#    *Microsoft*) unsetopt BG_NICE ;;
# esac


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
## Shell style
## Learned from https://www.gnu.org/software/bash/manual/bashref.html#Controlling-the-Prompt
export TERM=xterm-256color
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
alias ptt='ssh bbsu@ptt.cc'
# alias goodJson='python3 -m json.tool' ## $cat [json].json | goodJson ## $goodJson [json].json
alias fd ='fd -H' # search with hidden file enabled # add -I to also search for gitignored files
alias os='cat /etc/os-release'
alias tmuxat='tmux a -t'
alias mydiff='diff -y --suppress-common-lines'
alias myip='curl ifconfig.co/json > ~/tmp && cat ~/tmp | goodJson && rm ~/tmp'
alias g='git'
alias gb='gh browse -b $(git symbolic-ref --short HEAD)' # Open current git branch on browser
alias bat='bat -p' # bat with plain text
alias cbn='git symbolic-ref --short HEAD | tee >(pbcopy)' # current branch name
alias cat='bat'
alias c='code .'
alias s='source .env'

# alias open='xdg-open' # for linux

# brew install tree
# brew install tmux
# brew install xdg-open            # open command on Mac
# brew install wget
# brew install scc                 # src code analyzer
# brew install yq                  # better jq
# brew install uv                  # install with pip if specific version is needed # faster poetry
# brew install python@3.9
# brew install pip
# brew install mysql
# brew install gh                  # github!
# brew install redis
# brew install fzf
# brew install helm
# brew install kubectl
# brew install bat                 # cat with wings!
# brew install devtoys
# brew install tig                 # git versions
# brew install fzf
# brew install ripgrep             # better grep
# brew install fd                  # better find
# brew install htop
# brew install genact              # pretend to be busy
#
# date +%v                         # week count
# Always keep this line in the end
source $ZSH/oh-my-zsh.sh
