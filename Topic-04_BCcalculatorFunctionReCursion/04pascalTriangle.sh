#         1
#       1   1
#     1   2   1
#   1   3   3   1
# 1   4   6   4   1

fact()
{
    NUM=$1
    if (( NUM <= 1 )); then echo 1
    else echo $(( NUM * `fact $(( NUM -1 ))`))
    fi
}
nCr()
{
    N=$1
    R=$2
    NCR=$(( `fact $N` / (`fact $R` * `fact $((N-R))`) ))
    echo $NCR
}
pascalTriangle()
{
    ROW=$1
    for (( i=0; i<ROW; i++ )); do
        for (( j=0; j<ROW-i; j++ )); do
            echo -n " "
        done
        for (( j=0; j<=i; j++ )); do
            echo -n "`nCr $i $j` "
        done
        echo
    done
}

pascalTriangle $1