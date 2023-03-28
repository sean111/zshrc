# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
autoload -Uz compinit
compinit

[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
  git clone --depth=1 https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

# Set the name of the static .zsh plugins file antidote will generate.
plugin_list=~/zshrc/plugins.txt
zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins.zsh

# Ensure you have a .zsh_plugins.txt file where you can add plugins.
[[ -f ${plugin_list} ]] || touch ${plugin_list}
# Lazy-load antidote.
fpath+=(${ZDOTDIR:-~}/.antidote/functions)
autoload -Uz $fpath[-1]/antidote

if [[ ! $zsh_plugins -nt ${plugin_list} ]]; then
    echo "Generating bundle"
    (envsubst <${plugin_list} | antidote bundle >$zsh_plugins)
fi

# Source your static plugins file.
source $zsh_plugins

_evalcache starship init zsh

zreload() {
    source ~/.zshrc
}

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
