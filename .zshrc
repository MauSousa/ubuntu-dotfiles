# History
export HISTFILE=~/.zsh_history
export HISTFILESIZE=20000
export HISTSIZE=20000
export HISTTIMEFORMAT="[%F %T] "
export SAVEHIST=20000
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}"  ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Firefox developer edition
export PATH=/opt/firefox/firefox:$PATH

# Go
export PATH=$PATH:/usr/local/go/bin

# Deno
export DENO_INSTALL="/home/augusto/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Laravel
export PATH="$PATH:/home/augusto/.config/composer/vendor/bin"

# Symfony
export PATH="$HOME/.symfony/bin:$PATH"

# Alias
export Alias="/home/augusto/Documents/dotfiles"
source $Alias/.myAlias

# Functions
export Functions="/home/augusto/Documents/dotfiles"
source $Functions/.myFunctions

# Browser
export BROWSER=/opt/firefox/firefox

fpath=($fpath "/home/augusto/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
