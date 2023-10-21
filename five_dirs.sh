#!/bin/bash
mkdir five
cd five
for i in {1..5}; do mkdir five$i; cd five$i; for j in {1..4}; do for k in $(seq $j); do echo $j >> file$j; done; done; cd ..; done