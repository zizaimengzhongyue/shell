while read line
do
    echo "$line" | cut -f 4 -d ' '
done
