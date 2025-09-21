export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

fpath=(/usr/local/share/zsh/site-functions $DOTFILES/functions $fpath)

autoload -U $DOTFILES/functions/*(:t)

HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
