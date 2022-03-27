for file in $ZSH/plugins/*; do
  source "$file"
done

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/kubectl", from:oh-my-zsh
zplug "popstas/zsh-command-time"
zplug "Aloxaf/fzf-tab" 
zplug "zsh-users/zsh-autosuggestions"

## Plugin Settings

ZSH_COMMAND_TIME_MIN_SECONDS=3
ZSH_COMMAND_TIME_ECHO=1
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

## Plugin Keybinds

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
