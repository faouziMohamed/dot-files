#!/usr/bin/env bash

# TODO: Get args -v| --verbose

[ -r "home/user/.color" ] &&
    [ -f "home/user/.color" ] &&
    source "home/user/.color"

verbose=''
if [[ $# -gt 0 ]]; then
    case $1 in
        "-v" | "--verbose") verbose=true ;;
        -* | *)

            cat << EOF
            USAGE $(basename)
EOF
            ;;
    esac
fi
GIT_ALIASES=("
cancel,reset --hard HEAD^
unstage,reset HEAD
graph,log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset'
ckt,checkout
stt,status
sh,stash
a,add
cm,commit
cma,commit --amend
cmm,commit -m
cmam,commit --amend -m
pl,pull
ps,push
ls,ls-files
sst,status -s #stand for short status")

# set the separator to new line
IFS_BKP="${IFS}"
IFS="
"

for var in ${GIT_ALIASES[*]}; do
    if [  -n "$var" ]; then echo "Vide $var"; fi
    __command=$(echo "${var}" | cut -f1 -d,)
    # get the alias and replace double quotes by simple quotes (sep='#')
    __alias=$(echo "${var}" | cut -f2 -d, | sed "s#\"#'#g")
    if [[ ${verbose} ]]; then
        # TODO: if verbose the print each command
        echo -en "${ITALIC}${LIGHT_RED}git ${RESET}"
        echo -en "${ITALIC}config ${RESET}"
        echo -en "${ITALIC}${SALMON}--global ${RESET}"
        echo -en "${ITALIC}${SOFT_GRAY}alias${RESET}"
        echo -en "${WHITE}.${RESET}"
        echo -en "${ITALIC}${SOFT_GRAY}${__command} ${RESET}"
        echo -e "\"${ITALIC}${ORANGE}${__alias}${RESET}\""
    fi
    # TODO:Create command here
    # git config --global alias."${__alias}" "${__command}"
done

# Restore default separator
IFS="${IFS_BKP}"
