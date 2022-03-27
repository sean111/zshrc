export TERM="xterm-256color"
export ZSH=~/zshrc/
export ZPLUG=~/.zplug/
source $ZPLUG/init.zsh

## Plugins

source $ZSH/plugins.zsh

#Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load


## Keybinds

bindkey "^K" kill-whole-line

## Functions

zreload () {
    exec zsh
}

## Settings

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

if [[ -a ~/.zshrc_local ]]
then
    source ~/.zshrc_local
fi

eval "$(starship init zsh)"