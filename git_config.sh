#!/usr/bin/env bash

verbose=true
prettify=true

# Reading script arguments expected : -q|--quiet | -n| --no-prettify
# -q|--quiet : Remove script output
# -n| --no-prettify : Remove output colors
if [[ $# -gt 0 ]]; then
  while [ $1 ]; do
    case $1 in
      -*)
        case $1 in # -n depends in -q to be used
          -q | --quiet)
            verbose=false
            break
            ;;
          -n | --no-prettify) prettify=false ;;
          -v | --verbose) ;;
          *)
            echo "$(basename "$0") : '$1' Unknown argument"
            sleep 1
            ;;
        esac
        ;;
    esac
    shift
  done
fi

[ -r "home/user/.color" ] &&
  [ -f "home/user/.color" ] &&
  source "home/user/.color"

function show_process_with_color() {
  if [[ $# -lt 3 ]]; then return; fi
  local __config_name="${1}"
  local __key="${2}"
  local __value="${3}"

  echo -en "${ITALIC}${LIGHT_RED}git ${RESET}"
  echo -en "${ITALIC}config ${RESET}"
  echo -en "${ITALIC}${SALMON}--global ${RESET}"
  echo -en "${ITALIC}${SOFT_GRAY}${__config_name}${RESET}"
  echo -en "${WHITE}${BOLD}.${RESET}"
  echo -en "${ITALIC}${SOFT_GRAY}${__key} ${RESET}"
  echo -e "\"${ITALIC}${ORANGE}${__value}${RESET}\""
}

function show_process_without_color() {
  if [[ $# -lt 3 ]]; then return; fi
  local __config_name="${1}"
  local __key="${2}"
  local __value="${3}"

  echo -e "git config --global ${__config_name}.${__key} \"${__value}\""
}

function set_gitconfig() {
  local IFS_BKP="${IFS}"
  IFS="
"
  local GIT_CONFIGS
  local __config_key=''
  local __config=''
  local __value=''
  readonly GIT_CONFIGS="$(cat 'home/user/git/_gitconfig.txt')"

  for config in ${GIT_CONFIGS[*]}; do
    # If it's a string containing only spaces or zero-length string pass
    if [[ -z "${config// /}" ]]; then continue; fi
    # Get The field config.key (ex : user.name) and remove leading white spaces
    __config_key="$(echo "${config}" | cut --fields 1 --delimiter , | sed 's#^\(\W*\)##')"
    __config="$(echo "$__config_key" | cut --fields 1 --delimiter .)"
    __key="$(echo "$__config_key" | cut --fields 2 --delimiter .)"
    # Get The field value, replace double quotes by simple quotes and remove leading white spaces
    __value="$(echo "${config}" | cut --fields 2 --delimiter , | sed "s#\"#'#g" | sed 's#^\(\W*\)##')"

    if [[ ${verbose} == true ]]; then
      if [[ ${prettify} == true ]]; then
        show_process_with_color "${__config}" "${__key}" "${__value}"
      else
        show_process_without_color "${__config}" "${__key}" "${__value}"
      fi
    fi
    git config --global "${__config_key}" "${__value}"
  done
  # Restore default separator
  IFS="${IFS_BKP}"
}
# set the separator to new line

echo -e 'Setting Git config...'
sleep 0.99
set_gitconfig
sleep 0.99
echo -e 'Git aliases defined.'

# Restore default separator
