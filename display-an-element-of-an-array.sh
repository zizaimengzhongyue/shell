count=0
array=()
for line in `cat`
do
    array[$count]=$line
    count=($count+1)
done
echo ${array[3]}
