#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";
git pull origin main;

function install_copy() {
    rsync --exclude-from=.rsync_ignore -avhl --no-perms home/user/ ~;
    source ~/.bash_profile;
    exec $SHELL;
}

function main(){
	if [ "$1" == "--force" -o "$1" == "-f" ]; then
	install_copy;
	else
		read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
		echo "";
		if [[ $REPLY =~ ^[Yy]$ ]]; then
			install_copy;
		fi;
    fi;
}


main $@;
unset install_copy;
