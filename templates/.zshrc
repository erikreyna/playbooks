# ohmyzsh options
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

# ohmyzsh setup
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting z)
DISABLE_UPDATE_PROMPT="true"
ZSH_DISABLE_COMPFIX=true

# Load personal pre oh-my-zsh init config which should be stored in ~/.oh-my-zsh/custom/zshrc.pre
# E.g. setting ZSH theme etc
if [ -f $ZSH_CUSTOM/zshrc.pre ]; then . $ZSH_CUSTOM/zshrc.pre; fi

# load ohmyzsh
source $ZSH/oh-my-zsh.sh

# Load personal ZSH config which should be stored in ~/.oh-my-zsh/custom/zshrc.post
if [ -f $ZSH_CUSTOM/zshrc.post ]; then . $ZSH_CUSTOM/zshrc.post; fi

