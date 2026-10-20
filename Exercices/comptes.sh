#!/bin/bash

for date in 2016 2017 2018; do
	occurence=$(grep "Location" ../../../Exercice1/ann/$date/*/*.ann | wc -l)
	echo "$date : $occurence"
done
