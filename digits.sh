#!/bin/bash
(sum=0; x=1000; while [[ $x -le 2000 ]]; do if [[ $x =~ ^[01]+$ ]]; then sum=$(($sum + $x)); fi; x=$(($x + 1)); done; echo $sum)
