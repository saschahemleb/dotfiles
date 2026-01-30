# AGENTS.md

## Repository Overview
macOS dotfiles managed via symlinks and Homebrew. Designed for fresh macOS setup and ongoing maintenance.

## Key Commands
- `~/dotfiles/install.sh` - Initial installation
- `dotfiles update` - Update dotfiles, brew packages, and dev tools
- `dotfiles edit` - Open dotfiles in editor

## Conventions
- Files ending in `.symlink` are symlinked to `~` (e.g., `zshrc.symlink` → `~/.zshrc`)
- Brewfiles are split: `Brewfile.all` + `Brewfile.work` or `Brewfile.private`
- Workstation type stored in `~/.workstation-type` (prompted on first run)

## Structure
- `bin/dotfiles` - Main management script
- `configs/` - App configs (nvim, vscode, zed, ghostty, starship, k9s, opencode)
- `zsh/`, `git/` - Shell configs (use `.symlink` extension)
- `Brewfile*` - Homebrew packages
- `macos/` - macOS defaults

## Dev Tools
Managed via mise:
- bun@1.2
- node@24.9
- go@1.25
- kubectl@1.33

## Notes
- No automated tests or linting
- macOS-specific paths used (e.g., `~/Library/Application Support/`)
- Interactive prompts during setup for git config and workstation type
