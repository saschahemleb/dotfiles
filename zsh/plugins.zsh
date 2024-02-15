zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
(
    if [[ -f /usr/local/opt/antidote/share/antidote/antidote.zsh ]]; then
      . /usr/local/opt/antidote/share/antidote/antidote.zsh
    else
      . /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
    fi
    antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
)
fi
source ${zsh_plugins}.zsh
