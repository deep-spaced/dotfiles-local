# Oh My ZSH config
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="bullet-train"
ZSH_THEME="spaceship"
plugins=(brew extract zsh-iterm-touchbar)
COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Enable Grunt autocompletion.
#eval "$(grunt --completion=zsh)"

# Bullet Train Config:
BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  ruby
  git
)
BULLETTRAIN_DIR_EXTENDED=0

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
