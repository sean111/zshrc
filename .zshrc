source ~/.zplug/zplug
source ~/zshrc/git.zsh
source ~/zshrc/clipboard.zsh
if [[ $OSTYPE == cygwin* ]]
then
    zplug "yous/lime", use: "lime.zsh-theme"
else
    source ~/zshrc/powerlevel9k.zsh
fi
zplug "zsh-users/zsh-history-substring-search"
zplug "zlsun/solarized-man"
zplug "zsh-users/zsh-completions"
zplug "joel-porquet/zsh-dircolors-solarized"
if [[ $OSTYPE != cygwin* ]]
then
    zplug "zsh-users/zsh-autosuggestions"
    zplug "zsh-users/zsh-syntax-highlighting", nice:19
fi
#Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

## Then, source plugins and add commands to $PATH
zplug load --verbose

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

SAVEHIST=100
HISTFILE=~/.zsh_history

 autoload colors zsh/terminfo
 if [[ "$terminfo[colors]" -ge 8 ]]; then
	colors
 fi

if [[ $OSTYPE == darwin* ]]
then
    alias ls='ls -aF -G'
else
    alias ls='ls -aF -G --color=auto'
fi
