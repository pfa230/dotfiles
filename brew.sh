#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

#brew tap homebrew/versions

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/rsync

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Zsh
brew install zsh
brew install zsh-syntax-highlighting

# Languages
brew install python
brew install rbenv
brew install rbenv-gemset
brew install ruby-build

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm
brew install nmap
brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
brew install xz

# Install other useful binaries.
brew install unison
brew install sqlite
brew install terminal-notifier
brew install ack
brew install jq
brew install midnight-commander
brew install ranger
brew install pwgen
#brew install kdiff3
brew install dark-mode
#brew install exiv2
brew install watch
brew install tmux
brew install tig
brew install git
brew install git-extras
brew install git-lfs
#brew install legit
#brew install imagemagick --with-webp
#brew install lua
#brew install lynx
brew install p7zip
#brew install pigz
brew install pv
brew install rename
#brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
#brew install webkit2png
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
