if test -d "$HOME/.aspire/bin"
    fish_add_path --global "$HOME/.aspire/bin"

    set -gx ASPIRE_CONTAINER_RUNTIME 'podman'
    set -gx ASPIRE_CLI_TELEMETRY_OPTOUT 'true'
end
