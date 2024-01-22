# https://macos-defaults.com/

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Disable press-and-hold for keys in favor of key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder
chflags nohidden ~/Library

# Set a really fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 1

# Set the Finder prefs for showing a few different volumes on the Desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Run the screensaver if we're in the bottom-left hot corner
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Put the Dock on the left of the screen
defaults write com.apple.dock "orientation" -string "left"
# Dock icon size to 128px
defaults write com.apple.dock "tilesize" -int "128"
# Autohide the Dock when the mouse is out
defaults write com.apple.dock "autohide" -bool "true"
# Reduce the Dock autohide animation to a minimum
defaults write com.apple.dock "autohide-time-modifier" -float "0.15"
# Remove the autohide delay, the Dock appears instantly
defaults write com.apple.dock "autohide-delay" -float "0"
# Do not display recent apps in the Dock
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "mineffect" -string "suck"
# Only show active apps
defaults write com.apple.dock "static-only" -bool "true"
# Scroll up on a Dock icon to show all Space's opened windows for an app
defaults write com.apple.dock "scroll-to-open" -bool "true"

for app in "Activity Monitor" \
	"Address Book" \
	"Calendar" \
	"cfprefsd" \
	"Contacts" \
	"Dock" \
	"Finder" \
	"Mail" \
	"Messages" \
	"Photos" \
	"Safari" \
	"SystemUIServer" \
	"Terminal"; do
	killall "${app}" &> /dev/null
done