count=0
array=()
while read line
do
    var=$(echo $line | grep "[a|A]")
    if [[ $var = "" ]]
    then
        array[$count]=$line
        count=($count+1)
    fi
done
echo ${array[*]}
