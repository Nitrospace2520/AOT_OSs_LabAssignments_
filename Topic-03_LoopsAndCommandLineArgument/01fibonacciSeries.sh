#! Fibonacci Series(up-to range/term)
N=$1
A=0
B=1
echo -n "$A  $B  "
for (( i=2; i< N; i++ )); do
    C=$(( A + B ))
    echo -n "$C  "
    A=$B
    B=$C
done
echo