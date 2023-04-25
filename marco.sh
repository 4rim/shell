#!/usr/bin/env bash

marco(){
	currdir=$(pwd) # pwd will be expanded
	echo "The current working directory is $currdir"
	echo "$currdir" > ~/shell/marco.txt
}

polo(){
	echo cd $(head -1 ~/shell/marco.txt) # head -1 returns the first line of a file
	cd $(head -1 ~/shell/marco.txt)
}

