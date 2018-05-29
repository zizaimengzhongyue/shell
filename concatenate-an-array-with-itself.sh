count=0
array=()
for line in `cat`
do
    array[$count]=$line
    count=($count+1)
done
res=("${array[*]}" "${array[*]}" "${array[*]}")
echo ${res[*]}
