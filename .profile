#!/bin/sh

export LANG=en_US.UTF-8

export ENV=$HOME/.kshrc
export HISTCONTROL=ignoredups:ignorespace
export HISTFILE=$HOME/.ksh-history
export HISTSIZE=8192
export PATH=$PATH:/usr/games:$HOME/bin/
export PS1='\W $? '

export FCEDIT=kak
export PAGER=less
export VISUAL=kak

export FZF_DEFAULT_COMMAND="find ."
export FZF_DEFAULT_OPTS=$(tr '\n' ' ' < $HOME/.fzfrc)
export GOT_AUTHOR='David Bart <154410746+davidrbart@users.noreply.github.com>'
export KAKOUNE_CONFIG_DIR=$HOME/.kak/
export LYNX_CFG=$HOME/.lynx.cfg
export LYNX_LSS=$HOME/.lynx.lss
