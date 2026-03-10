# bug fixes for oh-my-zsh
export DISABLE_MAGIC_FUNCTIONS='true'
export ZSH_DISABLE_COMPFIX='true'

# dotnet settings
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_NOLOGO=1
export DOTNET_GENERATE_ASPNET_CERTIFICATE=0

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Jira

export JIRA_SITE="sli-do.atlassian.net"
export JIRA_EMAIL="izso@cisco.com"

# acli jira auth login --site "$JIRA_SITE" --email "$JIRA_EMAIL" --token
