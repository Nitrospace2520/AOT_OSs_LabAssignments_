#! basic calculator using case
while ((1)); do
    echo
    echo "+ for Addition"
    echo "- for Substraction"
    echo "* for Multiplication"
    echo "/ for Division"
    echo "% for Modulus"
    echo "^ for Power"
    echo "@ for Square Root"
    echo "q for exit"
    read -p "Enter your choice: " OP
    case $OP in
        '+') read -p "Enter two numbers : " N1 N2
            ADD=`echo "scale=2; $N1 + $N2"|bc`
            echo "Addition: $ADD" ;;

        '-') read -p "Enter two numbers : " N1 N2
            SUB=`echo "scale=2; $N1 - $N2"|bc`
            echo "Substraction: $SUB" ;;

        '*') read -p "Enter two numbers : " N1 N2
            MULT=`echo "scale=2; $N1 * $N2"|bc`
            echo "Multiplication: $MULT" ;;

        '/') read -p "Enter two numbers : " N1 N2
            DIV=`echo "scale=2; $N1 / $N2"|bc`
            echo "Division: $DIV" ;;

        '%') read -p "Enter two numbers : " N1 N2
            MOD=`echo "scale=2; $N1 % $N2"|bc`
            echo "Modulus: $MOD" ;;

        '^') read -p "Enter two numbers : " N1 N2
            POW=`echo "scale=2; $N1 ^ $N2"|bc`
            echo "Power: $POW" ;;

        '@') read -p "Enter the number : " N1 
            SQROT=`echo "scale=2; sqrt($N1)"|bc`
            echo "Square Root: $SQROT" ;;

        'q') exit ;;
        *) echo "Invalid choice" ;;
    esac
done
