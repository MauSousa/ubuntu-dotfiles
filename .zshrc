# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Alias
export Alias="/home/augusto/Documents/DotFiles"
source $Alias/.myAlias

# Functions
export Functions="/home/augusto/Documents/DotFiles"
source $Functions/.myFunctions

# Theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/augusto/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
