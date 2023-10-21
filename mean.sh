#!/bin/bash
echo "usage: ./$0 <column> [file.csv], that reads the column specified by <column> (a number) from the comma-separated-values file (with header) specified by [file.csv] (or from stdin if no [file.csv] is specified) and writes its mean." 1>&2
if [ -z "$2" ]; then 
    file='/dev/stdin'
else 
    file=$2
fi
cut -d "," -f $1 $file | tail -n +2 | { sum=0; count=0; while read n; do sum=$(($sum + $n)); count=$(($count + 1)); done; echo $sum / $count; } | bc -l