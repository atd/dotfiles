# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/atd/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U select-word-style
select-word-style bash
bindkey \^U backward-kill-line

eval "$(direnv hook zsh)"

# rvm
setopt nullglob
. /usr/local/rvm/scripts/rvm

source ~/.zplug/init.zsh

zplug "plugins/autojump",   from:oh-my-zsh
zplug "plugins/bundler",    from:oh-my-zsh
zplug "plugins/capistrano", from:oh-my-zsh
zplug "plugins/git",        from:oh-my-zsh
zplug "plugins/rake",       from:oh-my-zsh
zplug "plugins/rvm",        from:oh-my-zsh
zplug "plugins/ruby",       from:oh-my-zsh
zplug "plugins/rails",      from:oh-my-zsh
zplug "plugins/tmux",       from:oh-my-zsh

#zplug "themes/jreese", from:oh-my-zsh, as:theme
zplug "themes/miloshadzic", from:oh-my-zsh, as:theme

zplug load
