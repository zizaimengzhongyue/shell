while read line
do
    first=$(echo $line | cut -c 2)
    second=$(echo $line | cut -c 7)
    echo "$first$second"
done
