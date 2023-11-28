#! commands (pwd, ps, date etc) using case
while ((1)); do
    echo
    echo "1 for current working directory"
    echo "2 for all files and directories in the CWD"
    echo "3 for date"
    echo "4 for user info"
    echo "5 for ps"
    # echo "6 for "
    echo "0 for exit"
    read -p "Enter your choice: " OP
    case $OP in
        1) pwd ;;
        2) ls -l ;;
        3) date ;;
        4) who ;;
        5) ps ;;
        0) exit ;;
        *) echo "Invalid choice" ;;
    esac
done
