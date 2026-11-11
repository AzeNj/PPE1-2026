#!/bin/bash

sortie="../tableaux/tableau-fr.tsv"

if [ $# -lt 1 ]
	then
		echo "Argument non donné au script"
		exit 1
fi

> "$sortie"

numLigne=1

while read -r line;
do
	informations=$(curl -sI "$line")
	codeHTTP=$(echo "$informations" | grep -i '^HTTP/' | tail -n 1 | grep -oP '[0-9]{3}')
	charset=$(echo "$informations" | grep -oiP 'Content-Type:.*?charset=\K[^;[:space:]]+' | tail -n 1)
	nombreMots=$(curl -sL "$line" | grep -ozP '(?s)<body[^>]*>.*?</body>' | wc -c)
	printf "%d\t%s\t%s\t%s\t%s\n" "$numLigne" "$codeHTTP" "$charset" "$nombreMots" "$line" >> "$sortie"
	((numLigne+=1))
done < "$1"
