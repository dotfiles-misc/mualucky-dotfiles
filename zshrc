export ZSH=$HOME/.oh-my-zsh
export TERM="screen-256color"

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export NODE_TLS_REJECT_UNAUTHORIZED=0

# RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$HOME/bin:$PATH"

export SHELL=/bin/zsh

ZSH_THEME="spaceship"
SPACESHIP_PROMPT_SYMBOL=$'\u262F'
DEFAULT_USER="$USER"

# Alias
alias ll='ls -l'
alias la='ls -a'
alias path='echo $PATH | tr \: \\n'
alias rf='rm -rf'
alias ms='tmuxinator start'
alias mux='tmuxinator'
alias grep="grep --color=auto"
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

# System
alias nj='sudo su nodejs --shell /bin/zsh'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# plugins=(git tmux autojump ruby osx rails rvm gem brew bundler cp vi-mode)
# TODO zsh-syntax-highlighting add this plugin when vim update
plugins=(git tmux autojump ruby rvm gem brew bundler cp alias-tips zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# User configuration

# TODO delete when no error
#Fixing Perl Warning: Setting locale failed on Mac OS X
#export LC_CTYPE=en_US.UTF-8
#export LC_ALL=en_US.UTF-8

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh


# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# TODO if works well delete this
# Enable autosuggestions automatically.
#zle-line-init() {
#    zle autosuggest-start
#}
#zle -N zle-line-init

# bindkey for vi mode
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^f' vi-forward-word
bindkey '^r' history-incremental-search-backward
bindkey '^[' vi-cmd-mode

zss() ssh "$@" -t zsh
