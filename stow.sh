#!/usr/bin/env bash
set -e

stow git -t "$HOME/"

# https://github.com/lsd-rs/lsd
stow lsd -t "$HOME/"

# https://developers.openai.com/codex/cli/
stow codex -t "$HOME/"

# Ghostty
stow ghostty -t "$HOME/"
