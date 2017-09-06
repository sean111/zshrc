ctheme () {
    file="~/zshrc/themes/$1-theme.zsh"
    if [[ -a $file ]]; then
        print File exists!
    else
        print Can\'t find the file: $file
    fi
}