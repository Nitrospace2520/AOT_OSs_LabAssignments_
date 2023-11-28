insert()
{
    read -p "Enter Roll, Name, Mark :" ROLL NAME MARK
    echo "$ROLL|$NAME|$MARK" >> 01studentDB.txt
}
display()
{
    cat 01studentDB.txt
}
update()
{
    read -p "Enter Roll and updated Mark :" ROLL MARK
    LINE=`wc -l < 01studentDB.txt`
    for (( i=3; i<=LINE; i++ )); do
        WORD=`head -n $i 01studentDB.txt| tail -n 1| cut -d\| -f 1`
        if [ $WORD -eq $ROLL ]; then
            VAL=`head -n $i 01studentDB.txt| tail -n 1| cut -d\| -f 1,2`
            head -n $(( i-1 )) 01studentDB.txt > temp.txt
            echo "$VAL|$MARK" >> temp.txt
            tail -n $(( LINE -i )) 01studentDB.txt >> temp.txt
            cat temp.txt > 01studentDB.txt
            break
        fi
    done 
    rm temp.txt
}
deleteList()
{
    read -p "Enter Roll for delete the data : " ROLL
    LINE=`wc -l < 01studentDB.txt`
    for((i=3; i<=LINE; i++)); do
        WORD=`head -n $i 01studentDB.txt| tail -n 1| cut -d\| -f 1`
        if [ $WORD -eq $ROLL ]; then
            head -n $((i-1)) 01studentDB.txt > temp.txt
            tail -n $((LINE - i)) 01studentDB.txt >> temp.txt
            cat temp.txt > 01studentDB.txt
            break
        fi 
    done
    rm temp.txt
}

while [ 1 ]; do
    echo
    echo "1 for insert"
    echo "2 for update"
    echo "3 for delete"
    echo "4 for display"
    echo "5 for exit"
    read -p "Enter your choice: " OP
    case $OP in 
        1) insert ;;
        2) update ;;
        3) deleteList ;;
        4) display ;;
        5) exit ;;
        *) echo "Invalid Choice" ;;
    esac
done

echo