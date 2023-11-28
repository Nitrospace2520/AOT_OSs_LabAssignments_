YEAR=$1
if [ `expr $YEAR % 400` -eq 0 -o `expr $YEAR % 100` -ne 0 -a `expr $YEAR % 4` -eq 0 ]; then
    echo "$YEAR is leap year"
else
    echo "$YEAR is not leap year"
fi