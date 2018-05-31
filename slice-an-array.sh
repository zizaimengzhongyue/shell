count=0
while read line
do
    if((count > 2 && count < 8))
    then
        array[$count]=$line
    fi
    count=($count+1)
done
echo ${array[*]}
