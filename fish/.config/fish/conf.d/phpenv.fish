# phpenv configuration file
# https://github.com/phpenv/phpenv

set -gx PHPENV_ROOT "$HOME/.phpenv"

if test -x "$PHPENV_ROOT/bin/phpenv"
  set -gx PATH "$PHPENV_ROOT/bin" $PATH
end

if type -q phpenv
  status --is-interactive; and source (phpenv init - fish | psub)
end

function phpenv_composer_install
    set php_version $argv[1]
    set composer_version $argv[2]
    set version_root "$PHPENV_ROOT/versions/$php_version"
    set composer_path "$version_root/bin/composer"

    test -x "$version_root/bin/php"
    or begin
        echo "Missing PHP version: $php_version" >&2
        return 1
    end

    curl --fail --silent --show-error --location \
        "https://getcomposer.org/download/$composer_version/composer.phar" \
        --output "$composer_path"

    chmod +x "$composer_path"
end
