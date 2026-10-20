if [ $# -ne 2 ]; then
    echo "Please do $0 YEAR TYPE" >&2
    exit 1
fi

YEAR=$1
TYPE=$2

grep "$TYPE" ../../../Exercice1/ann/$YEAR/*/*.ann | wc -l
