# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit_mod"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyymmdd"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.oh-my-zsh/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(emoji-clock mysql-colorize dirhistory nyan sudo netstatus)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ARCHFLAGS="-arch x86_64"
export VIMINIT=":source $XDG_CONFIG_HOME/vim/vimrc"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# ---------------------------------------------------

export ZSHRC="${ZDOTDIR}/.zshrc"

export EDITOR='vim'
export LS_COLORS="di=0;34:ln=0;35:so=32;40:pi=33;40:ex=0;31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
export PS_FORMAT=pid,user,args

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -lh '
alias la='ls -lAh'
alias ps='ps -ax'
alias mount='mount | column -t'
alias df='df -kh'
alias mkdir="mkdir -p"

alias beep='echo -en "\007"'
alias hs='history | grep -i'
alias lp="ps | grep -i"
alias root='sudo -i'
alias try='xdg-open'
alias watch='tail -f'
alias x='clear'
alias hw-off="systemctl poweroff"
alias hw-suspend="systemctl suspend"
alias hw-reboot="systemctl reboot"

cl() { cd $@ && ll; }
js() { jstrings $1 | iconv -f SHIFT-JIS -t UTF-8 -c | less; }

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

# load zmv for intelligent mass file renames
autoload -U zmv

uname -mrs
#echo $(date +"%Y.%m.%d")  $(emoji-clock)$(date +"%H:%M:%S")
echo $(date +"%Y.%m.%d")  $(date +"%H:%M:%S")