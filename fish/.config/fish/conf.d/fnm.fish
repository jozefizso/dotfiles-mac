
if type -q fnm
  fnm env --use-on-cd --shell fish | source

  function fnm_upgrade
    fnm exec --using=$argv[1] npm ls --global --json \
      | jq -r '.dependencies | to_entries[] | .key+"@"+.value.version' \
      | xargs npm i -g
  end
end
