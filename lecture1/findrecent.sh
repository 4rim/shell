#!/usr/bin/env bash

# Shell script that recursively finds most recently modified files in a
# directory. Also lists all files by recency

ls -Atl | awk '{print $9}' | awk 'FNR == 2 {print}'
# ls: 
# -A = list all files except hidden ones (. and ..)
# t = sort by time
# l = include information like time of last modification
#
# the first awk prints out the 9th column (file name) and the second awk prints
# out the 2nd row (first file name - for some reason the actual first row is
# just a blank line)


ls -Atl | awk '{print $8, $9}'
# simpler version of above command that prints out all file names and time last
# modified
