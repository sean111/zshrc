source ~/.zplug/zplug
source ~/zshrc/git.zsh


POWERLEVEL9K_MODE='awesome-patched'

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "bhilburn/powerlevel9k", use:"powerlevel9k.zsh-theme"
zplug "zsh-users/zsh-syntax-highlighting", nice:10
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
export LS_COLORS="di=31;41:ln=31;41:so=31;41:pi=31;41:ex=31;41:bd=31;41:cd=31;41:su=31;41:sg=31;41:tw=31;41:ow=31;41:"
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
alias ls='ls -aF -G'

#powerlevel9k settings
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uE868  %m-%d-%y}"

# Disable dir/git icons
# POWERLEVEL9K_HOME_ICON=''
# POWERLEVEL9K_HOME_SUB_ICON=''
# POWERLEVEL9K_FOLDER_ICON=''
#
# DISABLE_AUTO_TITLE="true"
#
 POWERLEVEL9K_VCS_GIT_ICON=''
 POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
 POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
 POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
 POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
 POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

 POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
 POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
 #POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

 POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon context dir vcs)
 POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs virtualenv rbenv rvm symfony2_version battery time)

 POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
 POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

 POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m.%y}"

 POWERLEVEL9K_STATUS_VERBOSE=false
 export DEFAULT_USER="$USER"
