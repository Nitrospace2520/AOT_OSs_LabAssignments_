#! Number to word Conversion (Ex i/p 123, o/p: One Two Three)
read -p "Enter a number: " NUM
TEMP=0
# DIGIT=0
while ((NUM!=0)); do
    TEMP=$((TEMP*10 + NUM%10))
    # DIGIT=$((DIGIT +1))
    NUM=$((NUM/10))
done
while (( TEMP != 0 )); do
    REM=$(( TEMP % 10))
    case $REM in
        0) echo -n "Zero " ;;
        1) echo -n "One " ;;
        2) echo -n "Two " ;;
        3) echo -n "Three " ;;
        4) echo -n "Four " ;;
        5) echo -n "Five " ;;
        6) echo -n "Six " ;;
        7) echo -n "Seven " ;;
        8) echo -n "Eight " ;;
        9) echo -n "Nine " ;;
        *) echo -n "Wrong " ;;
    esac
    TEMP=$(( TEMP/10 ))
    # DIGIT=$((DIGIT -1))
done
# while (( DIGIT != 0 )); do
    # echo -n "Zero "
    # DIGIT=$((DIGIT -1))
# done
echo