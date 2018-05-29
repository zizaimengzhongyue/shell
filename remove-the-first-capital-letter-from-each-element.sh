count=0
array=()
for line in `cat`
do
    array[$count]=.$(echo $line | cut -b 2-)
    count=($count+1)
done
echo ${array[*]}
