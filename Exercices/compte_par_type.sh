YEAR=$1
TYPE=$2

grep "$TYPE" ../../../Exercice1/ann/$YEAR/*/*.ann | wc -l
