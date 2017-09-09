
_laravel_artisan () {
    echo "php $(find . -maxdepth 2 -mindepth 1 -name 'artisan' -type f | head -n 1)"
}

_laravel_get_command_list () {
    `_laravel_artisan` | sed "1,/Available commands/d" | awk '/^  ?[^ ]+ / { print $1 }'
}

_laravel () {
    compadd `_laravel_get_command_list`
}

compdef _laravel '`_laravel_artisan`'
compdef _laravel 'artisan'

alias art='`_laravel_artisan`'

alias artcc='art cache:clear'
alias artkg='art key:generate'
