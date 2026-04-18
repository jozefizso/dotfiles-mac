if test -d "$HOME/.aspire/bin"
    fish_add_path --global "$HOME/.aspire/bin"

    set -gx  ASPIRE_CONTAINER_RUNTIME 'podman'
end
