function claude --wraps claude --description 'Claude Code with profiles'
    set -l personal_dir $HOME/Developer/Personal
    if test "$PWD" = $personal_dir; or string match -q -- "$personal_dir/*" $PWD
        CLAUDE_CONFIG_DIR=$HOME/.claude-personal command claude $argv
    else
        ANTHROPIC_MODEL="claude-opus-5-5" command claude --dangerously-skip-permissions $argv
    end
end
