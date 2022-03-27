_symfony_console () {
  echo "php $(find . -maxdepth 2 -mindepth 1 -name 'console' -type f | head -n 1)"
}

_symfony2_get_command_list () {
   `_symfony_console` --no-ansi | sed "1,/Available commands/d" | awk '/^  ?[^ ]+ / { print $1 }'
}

_symfony2 () {
   compadd `_symfony2_get_command_list`
}

compdef _symfony2 '`_symfony_console`'
compdef _symfony2 'bin/console'
compdef _symfony2 sf

#Symfony Console
alias scon='`_symfony_console`'

#Cache
alias sconcc='scon cache:clear'

#Doctrine
alias scondd='scon doctrine:schema:update --dump-sql'
alias scondf='scon doctrine:schema:update --force'

#Assets/Assetic
alias sconai='scon asset:install'
alias sconad='scon assetic:dump'
alias sconaw='scon assetic watch'

alias sconp="scon --env=prod"
alias scond="scon --env=dev"

alias scondge='scon doctrine:generate:entity'
alias scondges='scon doctrine:generate:entities'
