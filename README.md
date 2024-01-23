# dotfiles

## install

Fresh macOS:

```shell
sudo softwareupdate -i -a
xcode-select --install
```

Clone and install

```shell
git clone https://github.com/saschahemleb/dotfiles.git ~/dotfiles
~/dotfiles/install.sh
```

This will symlink the appropriate files in `dotfiles` to your home directory.
Everything is configured and tweaked within `~/dotfiles`.

`dotfiles` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dotfiles` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.
