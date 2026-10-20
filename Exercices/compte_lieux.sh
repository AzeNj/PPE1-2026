#!/bin/bash

YEAR=$1
MONTH=$2
ITER=$3

grep "Location" ../../../Exercice1/ann/$YEAR/$MONTH/*.ann | cut -f3 | sort | uniq -c | sort -rn | head -n "$ITER"
