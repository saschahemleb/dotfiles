if 1>/dev/null 2>&1 which eza; then
    alias ls='eza -lh --group-directories-first --icons=auto'
    alias lsa='ls -a'
    alias lt='eza --tree --level=2 --long --icons --git'
    alias lta='lt -a'
fi

alias pubkey="more $HOME/.ssh/id_ed25519.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
