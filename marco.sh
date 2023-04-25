#!/usr/bin/env bash

marco(){
	currdir=$(pwd) # pwd will be expanded
	echo "The current working directory is $currdir"
	echo "$currdir" > ~/dotfiles/shell/marco.txt
}

polo(){
	echo cd $(head -1 ~/dotfiles/shell/marco.txt) # head -1 returns the first line of a file
	cd $(head -1 ~/dotfiles/shell/marco.txt)
}

