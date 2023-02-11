# ohmyzsh options
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

# ohmyzsh setup
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions)
DISABLE_UPDATE_PROMPT="true"
ZSH_DISABLE_COMPFIX=true

# Load personal pre oh-my-zsh init config which should be stored in ~/.zshrc.pre
# E.g. setting ZSH theme etc
if [ -f $ZSH_CUSTOM/.zshrc.pre ]; then . $ZSH_CUSTOM/.zshrc.pre; fi

# load ohmyzsh
source $ZSH/oh-my-zsh.sh

# Load personal ZSH config which should be stored in ~/.zshrc.post
# Most ZSH config goes here, aliases and exports
# such go into configs/aliases.zsh or configs/exports.zsh
# and get symlinked into $ZSH_CUSTOM for auto sourcing
if [ -f $ZSH_CUSTOM/.zshrc.post ]; then . $ZSH_CUSTOM/.zshrc.post; fi

