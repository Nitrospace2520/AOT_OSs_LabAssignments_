#$ Basic Shell commands:-
# echo -n "This file's path : "
# pwd
# echo -n "The files and directories are present : "
# ls -l
# echo "For exiting from this file 'exit' :-"
# exit

#$ 
while [ 1 ]; do 
    echo "1 for all files and directories"
    echo "2 for this files' path"
    echo "3 for knowing about author"
    echo "0 for exit"
    read -p "Enter your choice: " CHOICE
    case $CHOICE in
        1) ls -l ;;
        2) pwd ;;
        3) who ;;
        4) ps ;;
        0) exit ;;
        *) echo "Invalid Option" ;;
    esac
done










