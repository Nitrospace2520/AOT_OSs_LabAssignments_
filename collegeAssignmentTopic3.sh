# NOTE: Topic: 3 (While and for loop, command line argument)
# # ! Fibonacci series (up-to range/term)
# N=$1
# A=0
# B=1
# echo -n "$A $B "
# for (( i=2; i<=N; i++ )); do
#     C=$(( A + B))
#     echo -n "$C "
#     A=$B
#     B=$C
# done
# echo

# # ! Palindrome No:-
# N=$1
# TEMP=$N
# REV=0
# while [ $TEMP -ne 0 ]; do
#     REV=$(( REV*10 + TEMP%10 ))
#     TEMP=$(( TEMP / 10))
# done
# if [ $N -eq $REV ]; then
#     echo "$N is a palindrome number"
# else
#     echo "$N is not a palindrome number"
# fi

# # ! GCD and LCM:
# N1=$1
# N2=$2
# GCD=0
# LCM=0
# if [ $N1 -gt $N2 ]; then
#     GCD=$N2
#     LCM=$N1
# else
#     GCD=$N1
#     LCM=$N2
# fi
# for (( i=LCM; ; i += LCM )); do
#     if [ `expr $i % $GCD` -eq 0 ]; then
#         LCM=$i
#         break
#     fi
# done
# echo "$LCM"

# while [ $GCD -ne 1 ]; do
#     if [ `expr $N1 % $GCD` -eq 0 -a `expr $N2 % $GCD` -eq 0 ]; then
#         break
#     else
#         GCD=$(( GCD -1 ))
#     fi
# done

# echo "LCM: $(( N1 * N2 / GCD)), GCD: $GCD"

# # ! Armstrong Number:-
# N=$1
# # DIGIT=`echo $N | awk '{print log($1)/log(10)}' `
# # DIGIT=$((${DIGIT%.*} +1))
# # ? OR
# DIGIT=0
# T=$N 
# while [ $T -ne 0 ]; do
#     DIGIT=$(( DIGIT +1 ))
#     T=$(( T/ 10 ))
# done
# ARM=0
# T=$N 
# while [ $T -ne 0 ]; do
#     ARM=$(( ARM + (T%10)**DIGIT ))
#     T=$(( T/10 ))
# done
# if [ $ARM -eq $N ]; then
#     echo "$N is an Armstrong Number"
# else
#     echo "$N is not an Armstrong Number"
# fi

# ! Pattern: 01 
#       *
#     * * *
#   * * * * *
# * * * * * * *
# ROW=$1
# for (( i=1; i<=ROW; i++ )); do
#     for (( j=0; j<ROW-i; j++ )); do
#         echo -n "  "
#     done
#     for (( j=1; j<=2*i-1; j++ )); do
#         echo -n "* "
#     done
#     echo
# done

# ! Pattern: 02
# * * * *
# * * *
# * *
# *
# ROW=$1
# for (( i=1; i<=ROW; i++ )); do
#     for (( j=1; j<=ROW - i +1 ; j++ )); do
#         echo -n "* "
#     done
#     echo
# done