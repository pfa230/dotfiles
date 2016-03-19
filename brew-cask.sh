#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

brew tap caskroom/cask

brew cask install adobe-reader
brew cask install alfred
brew cask install android-file-transfer
brew cask install atom
brew cask install bartender
#brew cask install firefox
brew cask install google-chrome
brew cask install insomniax
brew cask install karabiner
brew cask install seil
brew cask install moom
brew cask install mysqlworkbench
brew cask install limechat
brew cask install omnidisksweeper
brew cask install grandperspective
brew cask install password-gorilla
brew cask install skype
brew cask install spectacle
brew cask install sublime-text
brew cask install telegram
brew cask install vlc
brew cask install viber
brew cask install istat-menus
brew cask install iterm
