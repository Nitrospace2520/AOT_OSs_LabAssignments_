#! DOB Calculation:-
read -p "Enter Date of Birth [DD/MM/YYYY]: " DOB
IFS="/"
set $DOB
D=$1
M=$2
Y=$3
PD=`date +%d`
PM=`date +%m`
PY=`date +%Y`
echo "Present date: $PD-$PM-$PY"
if [ $D -gt $PD ]; then
    case $PM in
        01|03|05|07|08|10|12) PD=$((PD + 31))
                                PM=$((PM-1)) ;;
        02) if [ `expr $PY%400` -eq 0 -o `expr $PY%100` -ne 0 -a `expr $PY%4` -eq 0 ]; then
                PD=$((PD + 28))
            else PD=$((PD+27))
            fi
            PM=$((PM-1)) ;;
        04|06|09|11) PD=$((PD + 30))
                    PM=$((PM-1)) ;;
        *) echo "Invalid month"
            exit ;;
    esac
fi
if [ $M -gt $PM ]; then
    PM=$(( PM + 12 ))
    PY=$(( PY - 1 ))
fi
D=$((PD - D))
M=`expr $PM - $M`
Y=$((PY - Y))
echo "You are now $Y years, $M months, $D days old"