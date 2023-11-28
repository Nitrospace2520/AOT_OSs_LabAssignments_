if [ $# -eq 0 ]; then
    echo "No input files"
    exit
fi 
for INPUT in $*
do
    if [ -f $INPUT ]; then  
        echo "File name: $INPUT"
        echo "No of lines: $(cat $INPUT |wc -l)"
        echo "No of words: $(cat $INPUT| wc -w)"
        echo "No of characters: $(cat $INPUT| wc -c)"
    else
        echo "It's a directory, named $INPUT"
    fi
done
