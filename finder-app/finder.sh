#!/bin/sh
# Author: Wallace

set -e
set -u

filesdir=$1
searchstr=$2

if [ "$#" -ne 2 ] ; then
    echo "Need two commandline arguments"
    exit 1
fi

if ! [ -d $1 ]; then
    echo "First argument should be path to a directory"
    exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)
num_matches=$(grep -r $searchstr "$filesdir"  | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matches"


