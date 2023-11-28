N1=$1
N2=$2

if [ $N1 -gt $N2 ]; then
    MIN=$N2
    MAX=$N1
else
    MIN=$N1
    MAX=$N2
fi

# GCD Calculation:
GCD=$MIN
while [ $GCD -ne 1 ]; do
    if [ `expr $N1 % $GCD` -eq 0 -a `expr $N2 % $GCD` -eq 0 ]; then
        break
    else
        GCD=$(( GCD - 1 ))
    fi
done

# LCM Calculation: 
LCM=$MAX
while [ 1 ]; do
    if [ `expr $LCM % $MIN` -eq 0 ]; then
        break
    else
        LCM=$(( LCM + MAX ))
    fi
done

echo "GCD = $GCD, LCM = $LCM"