#!/bin/bash
echo "usage: ./$0 <dir> <n> that removes all files in directory dir larger than <n> bytes." 1>&2
cd $1
find . -type f -size -$2\c | while read n; do rm -f $n; done