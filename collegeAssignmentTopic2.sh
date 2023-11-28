# # ! 1. All arithmetic operations:-
# # read -p "Enter two numbers: " NUM1 NUM2  #? OR
# NUM1=$1
# NUM2=$2
# # * Integer Arithmetic Operations:-
# # ADD=$(( NUM1 + NUM2 ))
# # SUB=$(( NUM1 - NUM2 ))
# # MULT=$(( NUM1 * NUM2 ))
# # DIV=$(( NUM1 / NUM2 ))
# # MOD=$(( NUM1 % NUM2 ))
# # POW=$(( NUM1 ** NUM2 )) 
# # $ TYPE: 2
# ADD=`expr $NUM1 + $NUM2`
# SUB=`expr $NUM1 - $NUM2`
# MULT=`expr $NUM1 \* $NUM2`
# DIV=`expr $NUM1 / $NUM2`
# MOD=`expr $NUM1 % $NUM2`
# POW=`expr $NUM1 ** $NUM2` #! ERROR
# # * Real Numbers Arithmetic Operations:- !ERROR
# # ADD=`echo "scale=4; $NUM1 + $NUM2"`
# # SUB=`echo "scale=4; $NUM1 - $NUM2"`
# # MULT=`echo "scale=4; $NUM1 * $NUM2"`
# # DIV=`echo "scale=4; $NUM1 / $NUM2"`
# # MOD=`echo "scale=4; $NUM1 % $NUM2"`
# # POW=`echo "scale=4; $NUM1 ** $NUM2"`
# echo "Addition: $ADD, Substraction: $SUB, Multiplication: $MULT, Division: $DIV, Modulus: $MOD, Power: $POW"

# # ! 2. Greatest and Least of among 3 nos:-
# N1=$1
# N2=$2
# N3=$3
# SM=99999
# LG=-9999
# if [ $N1 -gt $N2 ]; then
#     SM=$N2
#     LG=$N1
# else
#     SM=$N1
#     LG=$N2
# fi
# if [ $SM -gt $N3 ]; then
#     SM=$N3
# fi
# if [ $LG -lt $N3 ]; then
#     LG=$N3
# fi
# echo "Smallest: $SM, Largest: $LG"

# # ! 3. Leap Year
# YEAR=$1
# if [ `expr $YEAR % 400` -eq 0 -o `expr $YEAR % 100` -ne 0 -a `expr $YEAR % 4` -eq 0 ]; then
#     echo "$YEAR is Leap Year"
# else
#     echo "$YEAR is not Leap Year"
# fi

# ! 4. Grade Calculation:-
