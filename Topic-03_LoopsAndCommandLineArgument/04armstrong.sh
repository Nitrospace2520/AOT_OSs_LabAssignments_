NUM=$1
T=$1
DIGIT=0
while [ $T -ne 0 ]; do
    DIGIT=$(( DIGIT +1 ))
    T=$(( T/10 ))
done
T=$NUM
SUM=0
while [ $T -ne 0 ]; do
    SUM=$(( SUM + (T%10)**DIGIT ))
    T=$(( T/10 ))
done

if [ $NUM -eq $SUM ]; then
    echo "$NUM is an Armstrong Number"
else
    echo "$NUM is not an Armstrong Number"
fi
