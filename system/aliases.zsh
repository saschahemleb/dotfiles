if 1>/dev/null 2>&1 which brew; then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias pubkey="more $HOME/.ssh/id_ed25519.pub | pbcopy | echo '=> Public key copied to pasteboard.'"