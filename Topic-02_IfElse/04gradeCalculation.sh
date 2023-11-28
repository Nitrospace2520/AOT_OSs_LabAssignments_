#* Print the grade of the students:-
# 90 < mark <= 100 -> 'O'
# 80 < mark <= 90 -> 'E'
# 70 < mark <= 80 -> 'A'
# 60 < mark <= 70 -> 'B'
# 50 < mark <= 60 -> 'C'
# 40 < mark <= 50 -> 'D'
# 40 >= mark -> 'F'

#? CODE:-
read -p "Enter the mark : " MARK
if [ $MARK -gt 90 -a $MARK -le 100 ]; then
    GRADE=O
elif [ $MARK -gt 80 -a $MARK -le 90 ]; then
    GRADE=E
elif [ $MARK -gt 70 -a $MARK -le 80 ]; then
    GRADE=A
elif [ $MARK -gt 60 -a $MARK -le 70 ]; then
    GRADE=B
elif [ $MARK -gt 50 -a $MARK -le 60 ]; then
    GRADE=C
elif [ $MARK -gt 40 -a $MARK -le 50 ]; then
    GRADE=D
elif [ $MARK -gt 0 -a $MARK -le 40 ]; then
    GRADE=F
else
    echo "Invalid mark"
    exit
fi 
echo "Student grade is : '$GRADE'"