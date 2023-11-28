#! give date is valid or not
read -p "Enter a date (DD/MM/YYYY) :" DATE
IFS="/"
set $DATE
D=$1
M=$2
Y=$3
if (( Y < 0 || D > 31 || D<0 )); then 
    echo "Invlid Date"
    exit
fi
case $M in 
    01|03|05|07|08|10|12) if ((D > 31 || D<0 )); then
                                echo "Invalid Date"
                                exit 
                            fi ;;
    02) if (( D>=28 || D<0 )); then
                    if (( !(D==28 && (Y%400 ==0 || (Y%100 != 0 && Y%4 == 0))) )); then
                            echo "Invalid Date"
                            exit 
                    fi
                fi ;;
    04|06|09|11) if (( D>30 || D<0 )); then
                            echo "Invalid Date"
                            exit
                fi ;;
    *) echo "Invalid Data" 
        exit ;;
esac
echo "It is a valid Date"