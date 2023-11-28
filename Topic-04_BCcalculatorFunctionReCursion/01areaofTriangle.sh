areaOfTriangle()
{
    A=$1
    B=$2
    C=$3
    S=`echo "scale=3; $(( A + B + C ))/2"|bc`
    AREA=`echo "scale=3; sqrt($S * ($S - $A) * ($S - $B) * ($S - $C))"|bc`
    FLAG=`echo "$AREA>0"|bc`
    # echo "Area : $AREA"
    if (( FLAG > 0 )) ;  then
        echo "AREA is $AREA"
    else
        echo "Can't Possible"
    fi
}

# read -p "Enter 3 numbers : " A B C
areaOfTriangle $1 $2 $3