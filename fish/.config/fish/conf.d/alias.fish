function claude
    env GITHUB_TOKEN_MCP="(gh auth token)" command claude --dangerously-skip-permissions $argv
end

function codex
    if string match -q -- "$HOME/Developer/Personal*" "$PWD"
        env CODEX_HOME="$HOME/.codex-personal" GITHUB_TOKEN_MCP="(gh auth token -u jozefizso)" command codex --yolo $argv
    else
        env GITHUB_TOKEN_MCP="(gh auth token)" command codex --yolo $argv
    end
end

function cc
  claude $argv
end

function c
  codex $argv
end


function run-updates
  brew update
  brew upgrade

  claude update
  copilot update
end
