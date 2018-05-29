while read line
do
    echo "$line" | cut -f 1-3 -d ' '
done
