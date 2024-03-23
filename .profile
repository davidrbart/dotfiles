#!/bin/sh

export BROWSER=chrome
export ENV=$HOME/.kshrc
export FCEDIT=kak
export FZF_DEFAULT_COMMAND="find . -not -path './*.*'"
export FZF_DEFAULT_OPTS=$(tr '\n' ' ' < $HOME/.fzfrc)
export GOT_AUTHOR='David Bart <154410746+davidrbart@users.noreply.github.com>'
export HISTCONTROL=ignoredups:ignorespace
export HISTFILE=$HOME/.ksh-history
export HISTSIZE=8192
export KAKOUNE_CONFIG_DIR=$HOME/.kak/
export LANG=en_US.UTF-8
export LYNX_CFG=$HOME/.lynx.cfg
export LYNX_LSS=$HOME/.lynx.lss
export PAGER=less
export PATH=$PATH:/usr/games:$HOME/bin/
export PS1='\W $? '
export VISUAL=kak
