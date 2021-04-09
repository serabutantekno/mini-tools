#!/bin/bash

switchSSHkey(){
	keydir="$HOME/.ssh/$1"
	if [ -f $keydir ]; then
		ssh-add -D
		ssh-add $keydir
	else
		echo "FILE DOESN'T EXIST"
	fi
}

ls -l "$HOME/.ssh/"

echo "Activate SSH key (filename): "
read path

switchSSHkey $path
