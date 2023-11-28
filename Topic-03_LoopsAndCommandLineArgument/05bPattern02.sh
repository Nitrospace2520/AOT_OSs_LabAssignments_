#! Pattern is :-
# * * * *
# * * *
# * *
# * 

ROW=$1
for (( i=0; i<ROW; i++ )); do
    for (( j=0; j<ROW-i; j++ )); do
        echo -n "* "
    done
    echo
done