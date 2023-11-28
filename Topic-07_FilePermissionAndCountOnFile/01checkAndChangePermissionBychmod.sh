#! Check and change the file permission using chmod command:-
clear
if [ $# -eq 0 ]; then
    echo "NO file or Directory is inputed"
    exit
fi
for INPUT in $*
do 
    # if [ -f $INPUT ]; then
        ls -l $INPUT 
        chmod 000 $INPUT
        ls -l $INPUT
        if [ ! -r $INPUT ]; then
            chmod 440 $INPUT
            ls -l $INPUT
        fi
        if [ ! -w $INPUT ]; then
            chmod u+w,g+w $INPUT
            ls -l $INPUT
        fi
        if [ ! -x $INPUT ]; then
            chmod u+x,g+x,o+x $INPUT
            ls -l $INPUT
        fi
    # fi
done