# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8

# History
export HISTFILE=~/.zsh_history
export HISTFILESIZE=20000
export HISTSIZE=20000
export HISTTIMEFORMAT="[%F %T] "
export SAVEHIST=20000
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY

# Theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

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
# Alias
export Alias="/home/augusto/Documents/dotfiles"
source $Alias/.myAlias

# Functions
export Functions="/home/augusto/Documents/dotfiles"
source $Functions/.myFunctions

# Monitor
#xrandr --output HDMI-1 --primary --mode 1920x1200 -r 60 --rotate normal --output eDP-1 --mode 1920x1080 -r 60 --rotate normal --right-of HDMI-1

# Browser
export BROWSER=/opt/firefox/firefox

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

