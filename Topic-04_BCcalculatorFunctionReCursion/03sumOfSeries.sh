# Series f(x, n)= 1 + (x^2/2!) + (x^4/4!) +... + (x^(2*n)/(2*n)!)
fact()
{
    NUM=$1
    if [ $NUM -lt 2 ]; then echo 1
    else echo $(( NUM * `fact $((NUM-1))`))
    fi
}
sumOfSeries()
{
    X=$1
    NUM=$2
    SUM=1
    for (( i=1; i<=NUM; i++ )); do
        j=$(( 2 * i ))
        FACT=`fact $j`
        SUM=`echo "scale=4; $SUM + ($X ^ $j)/$FACT"|bc`
    done
    echo $SUM
}

read -p "Enter X, N: " X N
SUM=`sumOfSeries $X $N`
echo "Sum is $SUM"