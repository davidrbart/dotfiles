define-command susandres -params 1 -docstring 'suspends editor and runs command' %{
    evaluate-commands %sh{
        nohup sh -c "sleep 0.2; xdotool type '$1 && fg'; xdotool key Return" > /dev/null 2>&1 &
        kill -SIGTSTP $kak_client_pid
    }
}
