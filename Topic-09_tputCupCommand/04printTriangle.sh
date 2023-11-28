tput clear
HEIGHT=$1
COL=`tput cols`
for((i=0; i<HEIGHT; i++ )); do
    k=1
    for ((j=0; j<=i; j++ )); do
        tput cup $i $((j+COL/2 -i + k))
        echo "*"
        k=$((k+1))
    done
done

echo
echo
echo