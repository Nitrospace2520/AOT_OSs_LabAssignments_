# @question: Greatest and least of among 3 nos.
N1=$1
N2=$2
N3=$3

MIN=999999
MAX=-999999
if [ $N1 -gt $N2 ]; then
    MIN=$N2
    MAX=$N1
else
    MIN=$N1
    MAX=$N2
fi

if [ $MIN -gt $N3 ]; then
    MIN=$N3
fi
if [ $MAX -lt $N3 ]; then
    MAX=$N3
fi

echo "Max = $MAX and Min = $MIN"

