#! Search a element inside an array:-
read -p "Enter the size of an array: " N
for ((i=0; i<N; i++)); do
    read ARR[i]
done
# echo "Array Size : ${#ARR[*]}"
read -p "Enter the search element: " SEARCH
# #? If it is not sorted:-
# for (( i=0; i<N; i++ )); do 
#     if (( SEARCH == ARR[i] )); then
#         echo "Find at index $i"
#         exit
#     fi 
# done
# echo "Can't find the element"

#? If it is sorted:-
LEFT=0
RIGHT=N-1
while (( LEFT <= RIGHT )); do
    MID=$(( LEFT + (RIGHT - LEFT)/2 ))
    if (( ARR[MID] == SEARCH )); then 
        echo "Found at index $MID"
        exit
    elif ((ARR[MID] > SEARCH)); then
        RIGHT=$((MID -1))
    else 
        LEFT=$((MID+1))
    fi
done
echo "Can't find the element"