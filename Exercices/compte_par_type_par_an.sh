if [ $# -ne 1 ]; then
    echo "Please do $0 TYPE" >&2
    exit 1
fi

TYPE=$1

for year in 2016 2017 2018; do
	grep "$TYPE" ../../../Exercice1/ann/$year/*/*.ann | wc -l
done;
