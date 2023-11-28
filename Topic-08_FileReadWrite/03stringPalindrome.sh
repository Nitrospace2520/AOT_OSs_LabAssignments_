# checkPalindrome()
# {
#     str=$1
#     reversed=`echo "$str" | rev`
#     [ $str -eq $reversed ]
# }

# echo "Palindrome Words" > 03outputPalindromeWords.txt
# echo "----------------" >> 03outputPalindromeWords.txt

# grep -oE '[[:alpha:]]+' $1 | while read -r word; do
#     if `checkPalindrome $word`; then
#         echo $word >> 03outputPalindromeWords.txt
#     fi
# done
# cat 03outputPalindromeWords.txt

#? use this if the above code not works
is_palindrome()
{
    str=$1
    len=`echo $str|wc -c`
    len=$((len-1))
    flag=0
    for(( i=1; i<=len/2; i++)); do
        a=`echo $str|cut -c $i`
        b=`echo $str|cut -c $((len-i+1))`
        if [ $a != $b ]; then
            flag=1
            break
        fi
    done
    if [ $flag -ne 1 ]; then
        echo $str >> 03outputPalindromeWords.txt
    fi
}

echo "Palindrome Words" > 03outputPalindromeWords.txt
echo "----------------" >> 03outputPalindromeWords.txt

for word in $(< 03input.txt)
do
    echo $word > 03temp.txt
    if grep -E '\.$|\;$' 03temp.txt
    then
        count=`wc -c < 03temp.txt`
        count=$((count -2))
        word=`cut -c 1-$count 03temp.txt`
    fi
    echo "$word"
    is_palindrome $word
done

echo 
cat 03outputPalindromeWords.txt
