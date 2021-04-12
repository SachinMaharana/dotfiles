# If you come from bash you might have to change your $PATH.
#
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/sachin/.oh-my-zsh"

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git",   from:oh-my-zsh
zplug "stedolan/jq"
zplug "andrewferrier/fzf-z"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "djui/alias-tips"
zplug "rupa/z"
zplug "desyncr/auto-ls"


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gnzh"


alias vu='vagrant up'
alias vd='vagrant destroy -f'
alias vs='vagrant status'
alias an='ansible'


alias tf=terraform
alias k=kubectl
alias dr=docker
alias kg='kubectl get'
alias kd='kubectl describe'
alias kbc='kubectx'
alias vim='nvim'
alias kns='kubens'
#complete -F __start_kubectl k






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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

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
#
#

zplug load

source ~/.profile

alias cat='bat'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias glc='gcloud'
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8

alias ch='cargo check'
alias cr='cargo run'
alias ca='cargo add'
alias cb='cargo build'
alias cbr='cargo build --release'
eval "$(direnv hook zsh)"

#source /home/sachin/.config/broot/launcher/bash/br
eval "$(starship init zsh)"
export PATH="$PATH:$(yarn global bin)"
export PATH="$PATH:/snap/bin"
export RUSTC_WRAPPER=sccache
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
. /usr/local/bin/z
export PATH=$PATH:~/.jx/bin
export PATH=$PATH:~/.jx/bin
export PATH=$PATH:~/.jx/bin
export PATH=$PATH:~/.jx/bin
alias dotfiles='/usr/bin/git --git-dir=/home/sachin/.dotfiles/ --work-tree=/home/sachin'
export PATH=$PATH:/usr/local/go/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/sachin/.sdkman"
[[ -s "/home/sachin/.sdkman/bin/sdkman-init.sh" ]] && source "/home/sachin/.sdkman/bin/sdkman-init.sh"
export PATH=$PATH:/usr/local/kubebuilder/bin
export PATH="$HOME/.local/bin:$PATH"
eval $(thefuck --alias)
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export BAT_THEME=TwoDark
. /usr/share/autojump/autojump.sh
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"
