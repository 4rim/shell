#!/usr/bin/env bash

marco(){
	currdir=$(pwd) # pwd will be expanded
	echo "The current working directory is $currdir"
	echo "$currdir" > ~/shell/lecture1/marco.txt
}

polo(){
	echo "cd $(head -1 ~/shell/lecture1/marco.txt)" # head -1 returns the first line of a file
	cd "$(head -1 ~/shell/lecture1/marco.txt)" || exit # the "or" || is good practice in case the command (cd in this case) fails

	# modify this later so that we don't have to type out "~/shell/lecture1/marco.txt" every time. maybe use find?
}

