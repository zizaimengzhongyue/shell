count=0
while read line
do
    array[$count]=$line
    count=($count+1)
done
echo ${array[*]}
