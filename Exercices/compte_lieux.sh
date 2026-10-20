#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Please do $0 YEAR MONTH ITERATION" >&2
    exit 1
fi

YEAR=$1
MONTH=$2
ITER=$3

grep "Location" ../../../Exercice1/ann/$YEAR/$MONTH/*.ann | cut -f3 | sort | uniq -c | sort -rn | head -n "$ITER"
