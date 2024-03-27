define-command fzdelete -params 0 -docstring 'delete multiple buffers' %{
    evaluate-commands %sh{
        [ -z $kak_client_env_TMUX ] && printf '%s\n' 'fail "Client not started under tmux!"'
        buffers=$(printf '%s\n' $kak_buflist | tr ' ' '\n' | fzf-tmux -m -u)
        [ -z $buffers ] && { printf '%s\n' 'fail "Buffers not selected!"'; exit; }
        for buffer in $buffers; do
            printf '%s\n' "delete-buffer $buffer"
        done
    }
}
