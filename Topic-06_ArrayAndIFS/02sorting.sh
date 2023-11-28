read -p "Enter the size of the array: " SIZE
for ((i=0; i<SIZE; i++)); do
    read ARR[i]
done


for ((i=0; i<SIZE-1; i++)); do
    flag=0
    for((j=0; j<SIZE-i-1; j++)); do
        if((ARR[j]>ARR[j+1])); then
            flag=1
            T=$((ARR[j]))
            ARR[j]=$((ARR[j+1]))
            ARR[j+1]=$((T))
        fi
    done
    if((flag == 0)); then
        break
    fi
done
echo "After sorting, Array: ${ARR[*]}"