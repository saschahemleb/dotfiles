local os=$(dotfiles-os)
if [[ "$os" == "macos" ]]; then
  export CFLAGS="-I$(brew --prefix)/include"
  LDFLAGS="-L$(brew --prefix)/lib"
  export CPPFLAGS=$CFLAGS
fi
