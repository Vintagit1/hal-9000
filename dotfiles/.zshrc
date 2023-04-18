# autoload -Uz compinit
# compinit

export ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH=/Users/vinta/.oh-my-zsh

fpath=(
    /usr/local/share/zsh-completions
    /usr/local/share/zsh/site-functions
    $fpath
)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="gentoo"
PROMPT='%F{green}%n@$(scutil --get ComputerName) %F{yellow}${PWD/#$HOME/~} %F{white}$%F{reset_color} '

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fasd history-substring-search)

# User configuration

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# https://github.com/zsh-users/zsh-autosuggestions
# export ZSH_AUTOSUGGEST_USE_ASYNC="true"
# export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
# export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=240"
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/history-substring-search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

source ~/.iterm2_shell_integration.zsh

eval "$(gdircolors ~/.dircolors-solarized/dircolors.ansi-dark)"

eval "$(fasd --init auto)"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR="vim"
# else
#   export EDITOR="mvim"
# fi
export EDITOR="vim"

export DISABLE_AUTO_TITLE="true"

export GPG_TTY=$(tty)

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# https://github.com/Homebrew/brew/blob/master/docs/Manpage.md#environment
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

alias grep="grep --color=auto"
alias ls="gls --color=auto"
alias ll="ls -lA"
alias lh="ls -lhA"

source /usr/local/hal-9000/playbooks/roles/basic/files/hal_profile.sh
source /usr/local/hal-9000/playbooks/roles/python/files/py_profile.sh
source /usr/local/hal-9000/playbooks/roles/node/files/node_profile.sh
source /usr/local/hal-9000/playbooks/roles/go/files/go_profile.sh
source /usr/local/hal-9000/playbooks/roles/kubernetes/files/k8s_profile.sh
source /usr/local/hal-9000/playbooks/roles/ethereum/files/eth_profile.sh
