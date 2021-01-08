#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")" || return 1
git pull origin main

# Or Install using symlink ?? not a very good idea
function install_copy() {
  rsync --exclude-from=.rsync_ignore -avhl --no-perms home/user/ ~
  # shellcheck disable=SC1090
  source ~/.bash_profile
  exec "$SHELL"
}

function main() {
  if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
    install_copy
  else
    __warning="This may overwrite existing files in your home directory. "
    __warning+="Are you sure? (y/n) "
    read -p "${__warning}" -rn 1
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then install_copy; fi
  fi
}

main "$@"
unset install_copy
