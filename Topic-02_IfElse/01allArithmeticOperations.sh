# # @question: All Arithmetic operations:-
# while [ 1 ]; do
#     echo "+ for Addition"
#     echo "- for Substraction"
#     echo "* for Multiplication"
#     echo "/ for Division"
#     echo "% for Modulus"
#     echo "^ for Power"
#     echo "@ for Square Root"
#     echo "0 for Exit"
#     read -p "Enter your choice: " OPER
#     case $OPER in
#         '+')read -p "Enter two numbers : " N1 N2 
#             #* sum=$(( N1 + N2 )) #? For Integer Input
#             sum=`echo "scale=3; $N1 + $N2"| bc`
#             echo "Sum = $sum" ;;

#         '-')read -p "Enter two numbers : " N1 N2 
#             #* sub=$(( N1 - N2 )) 
#             sub=`echo "scale=3; $N1 - $N2"| bc`
#             echo "Sub = $sub" ;;

#         '*')read -p "Enter two numbers : " N1 N2 
#             mult=`echo "scale=3; $N1 * $N2"| bc`
#             echo "Mult = $mult" ;;

#         '/')read -p "Enter two numbers : " N1 N2 
#             div=`echo "scale=3; $N1 / $N2"| bc`
#             echo "Div = $div" ;;

#         '%')read -p "Enter two numbers : " N1 N2 
#             mod=`echo "scale=3; $N1 % $N2"| bc`
#             echo "Mod = $mod" ;;

#         '^')read -p "Enter two numbers : " N1 N2
#             # power=$(( $N1 ** $N2 ))
#             power=`echo "scale=3; $N1 ^ $N2"| bc` 
#             echo "Power = $power" ;;

#         '@')read -p "Enter the number : " N1
#             SQ=`echo "scale=3; sqrt($N1)" | bc`
#             echo "Square Root = $SQ" ;;
#         0) exit ;;
#         *) echo "Invalid Choice" ;;
#     esac
# done

##! Approach: 02
while [ 1 ]; do
    echo "1 for Addition"
    echo "2 for Substraction"
    echo "3 for Multiplication"
    echo "4 for Division"
    echo "5 for Modulus"
    echo "6 for Power"
    echo "7 for Square Root"
    echo "0 for Exit"
    read -p "Enter your choice: " OPER
    if [ $OPER -eq 1 ]; then
        read -p "Enter two numbers : " N1 N2 
            # sum=$(( N1 + N2 )) #? For Integer Input
            sum=`echo "scale=3; $N1 + $N2"| bc`
            echo "Sum = $sum" 
        
    elif [ $OPER -eq 2 ]; then
            read -p "Enter two numbers : " N1 N2 
            # sub=$(( N1 - N2 )) 
            sub=`echo "scale=3; $N1 - $N2"| bc`
            echo "Sub = $sub" 
        
    elif [ $OPER -eq 3 ]; then
            read -p "Enter two numbers : " N1 N2 
            mult=`echo "scale=3; $N1 * $N2"| bc`
            echo "Mult = $mult" 
        
    elif [ $OPER -eq 4 ]; then
            read -p "Enter two numbers : " N1 N2 
            div=`echo "scale=3; $N1 / $N2"| bc`
            echo "Div = $div" 
    
    elif [ $OPER -eq 5 ]; then
            read -p "Enter two numbers : " N1 N2 
            mod=`echo "scale=3; $N1 % $N2"| bc`
            echo "Mod = $mod" 

    elif [ $OPER -eq 6 ]; then
            read -p "Enter two numbers : " N1 N2
            # power=$(( $N1 ** $N2 ))
            power=`echo "scale=3; $N1 ^ $N2"| bc` 
            echo "Power = $power" 

    elif [ $OPER -eq 7 ]; then
            read -p "Enter the number : " N1
            SQ=`echo "scale=3; sqrt($N1)" | bc`
            echo "Square Root = $SQ" 
            
    elif [ $OPER -eq 0 ]; then
        exit 

    else
        echo "Invalid Choice" 
    fi
done


