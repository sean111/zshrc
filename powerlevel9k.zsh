#FONTCONFIG_PATH=/opt/X11/lib/X11/fontconfig
POWERLEVEL9K_MODE='awesome-patched'
zplug "bhilburn/powerlevel9k", use:"powerlevel9k.zsh-theme"
#powerlevel9k settings
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uE868  %m-%d-%y}"

 POWERLEVEL9K_VCS_GIT_ICON=''
 POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
 POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
 POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
 POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
 POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

 POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
 POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
 #POWERLEVEL9K_VCS_UNTRACKED_ICON='?

 POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon context dir vcs)
 POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs virtualenv rbenv rvm symfony2_version battery time)

 POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
 POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

 POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m.%y}"

 POWERLEVEL9K_STATUS_VERBOSE=false
 export DEFAULT_USER="$USER"
