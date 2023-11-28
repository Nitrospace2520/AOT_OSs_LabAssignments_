NUM=$1
TEMP=$NUM
REV=0
while [ $TEMP -ne 0 ]; do
    REV=$(( REV*10 + TEMP%10 ))
    TEMP=$(( TEMP/10 ))
done

if [ $NUM -eq $REV ]; then
    echo  "$NUM is a plaindrome number"
else
    echo "$NUM is not a plaindrome number"
fi
