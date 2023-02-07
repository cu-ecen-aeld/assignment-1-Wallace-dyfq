#!/usr/bin/sh
# Author: Wallace


writefile=$1
writestr=$2

if [ "$#" -ne 2 ] ; then
    echo "Need two commandline arguments"
    exit 1
fi

filedir=$(dirname $writefile)

if ! [ -d $filedir ]; then 
    echo "making directory $filedir"
    mkdir -p "$filedir"
fi

echo $writestr > $writefile

cat $writefile

if [ $? != 0 ]; then
    echo "Cannot create file $writefile"
    exit 1
fi

echo "success write $2 to $1"
