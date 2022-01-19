# Path to your oh-my-zsh installation.
export ZSH="/home/giancarlo/.oh-my-zsh"

ZSH_THEME=""

# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"

# DISABLE_UPDATE_PROMPT="true"

# export UPDATE_ZSH_DAYS=13

# DISABLE_MAGIC_FUNCTIONS="true"

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Add wisely, as too many plugins slow down shell startup.
plugins=(rust archlinux vi-mode safe-paste colorize zsh-syntax-highlighting zsh-autosuggestions history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# History in cache
HISTFILE=~/.cache/zsh/history

source $HOME/.config/user-dirs.dirs

source $HOME/.local/share/fonts/i_linux.sh
test -r "$HOME/.dir_colors" && eval $(dircolors ~/.dir_colors)

# You may need to manually set your language environment
export LANG=es_MX.UTF-8

export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL=alacritty

# ALIAS

alias wiki="nvim ~/vimwiki/index.wiki"
alias diary="nvim ~/vimwiki/diary/diary.wiki"
alias vimrc="nvim ~/.config/nvim/init.lua"
alias csh="nvim ~/.zshrc"
alias free="free -m"
alias nvim="NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim"
alias open="fzf -m | xargs xdg-open"
alias emacsclient="emacsclient -c"

alias rm="rm -v"
alias mv="mv -v"
alias cp="cp -v"

# Custom Variables
export PATH="$HOME/.local/bin:$HOME/scripts:$HOME/.config/emacs/bin:$PATH"
# export PATH="$HOME/context/context-linux-64/tex/texmf-linux-64/bin:$PATH"

export OSFONTDIR="/usr/share/fonts"

ZSH_COLORIZE_CHROMA_FORMATTER=true-color

# Apache tomcat

export CATALINA_HOME="/usr/share/tomcat10"
export CATALINA_BASE=$CATALINA_HOME

#

export LESSHISTFILE="/dev/null"

# Run at start
eval "$(starship init zsh)"
