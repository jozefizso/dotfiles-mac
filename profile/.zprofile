# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Node Version Manager (fnm)
eval "$(fnm env --use-on-cd)"

# Dotnet Tools
export PATH="$PATH:$HOME/.dotnet/tools"

fnm use v22
