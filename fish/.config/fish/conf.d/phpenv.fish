# phpenv configuration file
# https://github.com/phpenv/phpenv

set -gx PHPENV_ROOT "$HOME/.phpenv"

if test -x "$PHPENV_ROOT/bin/phpenv"
  set -gx PATH "$PHPENV_ROOT/bin" $PATH
end

if type -q phpenv
  status --is-interactive; and source (phpenv init - fish | psub)
end
