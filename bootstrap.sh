#!/usr/bin/env bash
set -e

#####
# Setup brew

if ! command -v brew >/dev/null; then
  echo "Installing Homebrew..."

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> "$HOME/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Updating Homebrew..."
brew update

#####
# Setup fnm
if ! command -v fnm >/dev/null; then
  echo "Installing fnm"

  curl -fsSL https://fnm.vercel.app/install | bash
fi

#####
# Install apps
brew bundle
