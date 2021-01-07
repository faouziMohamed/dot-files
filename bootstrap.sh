#!/usr/bin/env bash


cd "$(dirname "${BASH_SOURCE}")";
git pull origin main;

function install_() {
    rsync --exclude-from=.rsync_ignore -avhl --no-perms . ${1};
    source ~/.bash_profile;
}

function main(){
	if [ "$1" == "--force" -o "$1" == "-f" ]; then
	install_ test;
	else
		read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
		echo "";
		if [[ $REPLY =~ ^[Yy]$ ]]; then
			install_ test;
		fi;
fi;
}


main $@;
unset install_;