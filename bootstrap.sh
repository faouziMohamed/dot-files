#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")" || return 1

verbose='--verbose'
prettify=''
force=''

if [[ $# -gt 0 ]]; then
  while [ "$1" ]; do
    case $1 in
      -*)
        case $1 in # -n depends in -q to be used
          -q | --quiet) verbose='--quiet' ;;
          -n | --no-prettify) prettify='--no-prettify' ;;
          -f | --force) force='--force' ;;
          *)
            echo -e "${BOLD}USAGE $(basename "$0")${RESET} : $(basename "$0") [-q|--quiet] [-q|--no-prettify] [-f|--force]"
            sleep 1
            exit 1
            ;;
        esac
        ;;
    esac
    shift
  done
fi

git pull origin main

# Or Install using symlink ?? not a very good idea
function install_copy() {
  rsync -avh --exclude-from='.rsync_ignore' home/user/ ~

  [ -f "git_config.sh" ] && bash "git_config.sh" "${1}" "${2}"
  # shellcheck disable=SC1090
  source ~/.bash_profile
}

function main() {
  if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
    shift
    install_copy "${1}" "${2}"
  else
    __warning="This may overwrite existing files in your home directory. "
    __warning+="Are you sure? (y/n) "
    read -p "${__warning}" -rn 1
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then install_copy "${2}" "${3}"; fi
  fi
}

main "${force}" "${verbose}" "${prettify}"
unset install_copy
