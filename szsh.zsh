zreload () {
    source ~/.zshrc
}

ctheme () {
    file=~/zshrc/themes/$1-theme.zsh
    if [[ -a $file ]]; then
        ln -sf $file ~/zshrc/theme.zsh
        zreload
    else
        print Theme not found, please check that the file is in the themes directory
    fi
}