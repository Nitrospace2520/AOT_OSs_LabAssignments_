#$ Topic: 04 (bc calculator, function, recursion)
#! 1. Area of Triangle
AreaOFTriangle(){
    SIDE1=$1
    SIDE2=$2
    SIDE3=$3
    S=$(( SIDE1 + SIDE2 + SIDE3 ))
    # S=`echo "scale=3; $S/2"|bc` 
    # AREA=`echo "scale=3; sqrt($S* ($S-$SIDE1) * ($S - $SIDE2) * ($S - $SIDE3))"|bc`
    #? OR use the following if bc is not present
    S=`echo $S | awk '{print ($1)/2}' `  
    AREA=`echo $S $SIDE1 $SIDE2 $SIDE3| awk '{print ($1 * ($1 - $2) * ($1 -$3) * ($1 -$4))**(1/2)}'`
    echo $AREA
}
# echo `AreaOFTriangle $1 $2 $3`

#! 2. Factorial with recursion
fact(){
    N=$1
    if [ $N -lt 2 ]; then
        echo 1
    else
        echo $((N * `fact $(( N-1 ))`))
    fi
}
# echo `fact $1`

#! 3. Series f(x, n) = 1 + x^2/2! + x^4/4! + ... + x^(2*n)/(2*n)!
seriesSum(){
    X=$1
    N=$2
    SUM=1
    for (( i=1; i<=N; i++ )); do
        J=$(( 2 * i))
        # SUM=`echo "scale=4; $SUM + ($X ** $J)/(\`fact $J\`)"|bc`
        #? OR use this if 'bc' command is not present
        FACT=`fact $J`
        SUM=`echo $SUM $X $J| awk '{print ($1 + ($2 ** $3)/$FACT)}'`
    done
    echo $SUM
}
# echo `seriesSum $1 $2`

#! 4. Pascal Triangle
