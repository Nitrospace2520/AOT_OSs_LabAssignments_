fact()
{
    N=$1
    if [ $N -lt 2 ]; then
        echo 1
    else
        echo $(( N * `fact $(( N-1 ))` ))
    fi
}

NUM=$1
echo "$NUM! = $(( `fact $1` ))"