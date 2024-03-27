define-command fzselect -params 0 -docstring 'select buffer' %{
    evaluate-commands %sh{
        [ -z $kak_client_env_TMUX ] && printf '%s\n' 'fail "Client not started under tmux!"'
        buffer=$(printf '%s\n' $kak_buflist | tr ' ' '\n' | fzf-tmux -u)
        [ -z $buffer ] && { printf '%s\n' 'fail "Buffer not selected!"'; exit; }
        printf '%s\n' "buffer $buffer"
    }
}
