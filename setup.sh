#!/bin/bash

# Homebrew のインストール
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Homebrew パッケージインストール
brew install git vim tmux zsh

# シェルを zsh に変更
if [ "$SHELL" != "/bin/zsh" ]; then
  chsh -s /bin/zsh
  echo "Shell changed to zsh. Restart your terminal."
fi
