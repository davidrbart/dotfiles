#!/bin/ksh

alias ls='ls -1F'
alias xli='xli -fillscreen'
alias pls='doas $(fc -ln -1)'
alias rm='trash'
alias rsync='openrsync -a --rsync-path=/usr/bin/openrsync'

alias ll='ls -ahlF'

alias ga='got stage'
alias gaa='got add -R'
alias gc='got clone'
alias gd='got diff -C 0 -w'
alias gf='got fetch -adt'
alias gm='got commit'
alias gp='got send'
alias grr='got unstage'
alias grr='got remove -fR'
alias gs='got status'

bind ^J=down-history
bind ^K=up-history
bind -m ^R=fzf-history^M

fzf-history()
{
    cmd=$(fzf --tac --no-sort -e < $HISTFILE)
    [[ -z $cmd ]] && return
    printf '%s\n' "$cmd"
    eval $cmd
}

set -A complete_got_1 -- \
    init \
    import im \
    clone cl \
    fetch fe \
    checkout co \
    update up \
    status st \
    log \
    diff di \
    blame bl \
    tree tr \
    ref \
    branch br \
    tag \
    add \
    remove rm \
    revert rv \
    commit ci \
    cherrypick cy \
    backout bo \
    rebase rb \
    histedit he \
    integrate ig \
    stage sg \
    unstage ug \
    cat \
    info

set -A complete_rcctl_1 -- disable enable get ls order set restart start stop
set -A complete_rcctl_2 -- $(rcctl ls all)
