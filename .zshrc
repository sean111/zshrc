#includes
export TERM="xterm-256color"
autoload -U compinit && compinit
source ~/.zplug/init.zsh
source ~/zshrc/git.zsh
source ~/zshrc/clipboard.zsh
source ~/zshrc/keybindings.zsh
source ~/zshrc/vagrant.zsh
source ~/zshrc/docker.zsh
source ~/zshrc/symfony_console.zsh
source ~/zshrc/tmux.zsh
source ~/zshrc/szsh.zsh
source ~/zshrc/theme.zsh
source ~/zshrc/laravel.zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "zlsun/solarized-man"
zplug "zsh-users/zsh-completions"
if [[ $OSTYPE != cygwin* ]]
then
    zplug "zsh-users/zsh-autosuggestions"
    zplug "zdharma/fast-syntax-highlighting", nice:19
fi

zplug "popstas/zsh-command-time"
ZSH_COMMAND_TIME_MIN_SECONDS=3
ZSH_COMMAND_TIME_ECHO=1

#Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

## Then, source plugins and add commands to $PATH
#zplug load --verbose
zplug load

#Gitsome
autoload bashcompinit
bashcompinit
source ~/zshrc/gh_complete.zsh

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
    if [[ -a ~/Library/Android ]]
    then
        alias aavd='~/Library/Android/sdk/tools/android avd'
        alias asdk='~/Library/Android/sdk/tools/android sdk'
        alias android='~/Library/Android/sdk/tools/android'
	alias adb='~/Library/Android/sdk/platform-tools/adb'
    fi
else
    alias ls='ls -aF -G --color=auto'
fi

if [[ -a ~/.zshrc_local ]]
then
    source ~/.zshrc_local
fi

#Global Aliases
alias ..='cd ..'

#Key Binds
bindkey "^K" kill-whole-line

export PATH="$HOME/.yarn/bin:$PATH"

autoload -U zmv
