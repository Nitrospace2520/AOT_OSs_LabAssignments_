R=$1

for ((i=0; i<=360; i+=5)); do
    X=`echo "scale=4; 3.14/180 * $i"|bc|awk '{print cos($1)}'`
    Y=`echo "scale=4; 3.14/180 * $i"|bc|awk '{print sin($1)}'`
    X=`echo "scale=4; $X * $R"|bc|awk '{print int($1)}'`
    Y=`echo "scale=4; $Y * $R"|bc|awk '{print int($1)}'`
    X=`expr $X + 20`
    Y=`expr $Y + 10`
    tput cup $Y $X
    echo "*"
done
echo
echo
echo
echo
echo
echo
echo
echo