#! Pattern is :-
#         *
#       * * *
#     * * * * * 
#   * * * * * * *
# * * * * * * * * * 

ROW=$1
for (( i=0; i<ROW; i++ )); do
    for (( j=0; j<ROW-1-i; j++ )); do
        echo -n "  "
    done
    for (( j=0; j<(2*i +1); j++ )); do
        echo -n "* "
    done
    echo
done