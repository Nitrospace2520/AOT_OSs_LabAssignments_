LENGTH=$1
WIDTH=$2
tput clear
COL=`tput cols`
for (( i=0; i<LENGTH; i++ )); do
    k=0
    for(( j=0; j<WIDTH; j++ )); do
        if [ $i -eq 0 -o $j -eq 0 -o $i -eq $((LENGTH-1)) -o $((WIDTH -1)) -eq $j ]; then
            tput cup $i $((j + COL/2 + k))
            echo "*"
        fi 
            k=$(( k + 1))
    done 
done 
echo
echo
echo
echo