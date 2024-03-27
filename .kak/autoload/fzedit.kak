define-command fzedit -params 0 -docstring 'edit file' %{
    evaluate-commands %sh{
        [ -z $kak_client_env_TMUX ] && printf '%s\n' 'fail "Client not started under tmux!"'
        file=$(find . -type f | fzf-tmux -u)
        [ -z $file ] && { printf '%s\n' 'fail "File not selected!"'; exit; }
        printf '%s\n' "edit $file"
    }
}
