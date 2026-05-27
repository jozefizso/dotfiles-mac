# Prefer Homebrew binaries over Apple's system binaries.
fish_add_path --global --move --path \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \
    /usr/local/bin \
    /usr/local/sbin
