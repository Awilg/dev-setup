#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
brew install bash
brew install bash-completion2
# We installed the new shell, now we have to activate it
echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# Change to the new shell, prompts for password
chsh -s /usr/local/bin/bash
#curl -L http://install.ohmyz.sh | sh
#chsh -s /bin/zsh

# Install Python
brew install python
brew install python3

# Install more recent versions of some OS X tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install hub
brew install lua
brew install rename
brew install tree

# Core casks
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" java

# Development tool casks
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" macdown
brew cask install --appdir="/Applications" goland
brew cask install --appdir="/Applications" postman

# Misc casks
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" dashlane

# Install Docker, which requires virtualbox
brew install docker
brew install boot2docker

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Remove outdated versions from the cellar.
brew cleanup
