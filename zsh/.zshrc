# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Alias
export Alias="/home/augusto/Documents/dotfiles"
source $Alias/.myAlias

# Functions
export Functions="/home/augusto/Documents/dotfiles"
source $Functions/.myFunctions

# Starship config file
export STARSHIP_CONFIG=~/.starship/config.toml
export STARSHIP_CACHE=~/.starship/cache

# Starship
eval "$(starship init zsh)"
