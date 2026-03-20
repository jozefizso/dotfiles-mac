if status is-interactive
    if type -q starship
        starship init fish | source
    end

    # Only auto-start Zellij for local interactive terminals.
    # if type -q zellij
    #     and not set -q ZELLIJ
    #     and test "$TERM_PROGRAM" != "vscode"
    #     and not set -q SSH_TTY
    #     zellij attach --create main
    # end
end
