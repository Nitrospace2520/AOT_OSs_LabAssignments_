# tput setaf 9
# echo "Changed text color :)"
# for i in `seq 1 10`; do
#     tput setaf $i
#     echo "Changed text color to : $i"
# done
# https://stackoverflow.com/questions/20175249/print-a-square-of-asterisks-with-unix
tput clear
SIDE=$1
COL=`tput cols`
# ROW=`tput lines`
for(( i=0; i<SIDE; i++ )); do
    k=0
    for ((j=0; j<SIDE; j++)); do
        if((i==0 || i==SIDE-1 || j==0 || j==SIDE-1)); then
            tput cup $((i + ROW/2)) $((j +COL/2 +k))
            echo "*"
        fi
        k=$((k+1))
    done
done
echo
echo
echo
echo