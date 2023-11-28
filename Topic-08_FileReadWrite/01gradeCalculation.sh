if [ $# -eq 0 ]; then
    echo "Enter a input file"
    exit
fi 
MARK=$1
echo "Roll  Name    Marks   Grade" > 01outputGrade.txt
echo "">> 01outputGrade.txt
if [ -f $MARK ]; then
    exec < $MARK
    while read LINE
    do
        set `echo $LINE`
        M=$3 
        if [ $M -gt 90 -a $M -le 100 ]; then
            echo "$1    $2    $3   'O'" >> 01outputGrade.txt
        elif [ $M -gt 80 -a $M -le 90 ]; then
            echo "$1    $2    $3   'E'" >> 01outputGrade.txt
        elif [ $M -gt 70 -a $M -le 80 ]; then
            echo "$1    $2    $3   'A'" >> 01outputGrade.txt
        elif [ $M -gt 60 -a $M -le 70 ]; then
            echo "$1    $2    $3   'B'" >> 01outputGrade.txt
        elif [ $M -gt 50 -a $M -le 60 ]; then
            echo "$1    $2    $3   'C'" >> 01outputGrade.txt
        elif [ $M -gt 40 -a $M -le 50 ]; then
            echo "$1    $2    $3   'D'" >> 01outputGrade.txt
        elif [ $M -gt 0 -a $M -le 40 ]; then
            echo "$1    $2    $3   'F'" >> 01outputGrade.txt
        else 
            echo "Invalid mark"
            exit
        fi
    done
fi
echo
cat 01outputGrade.txt
