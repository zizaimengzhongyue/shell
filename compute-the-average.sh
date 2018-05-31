read count
sum=0
for((i=1;i<=count;i++))
do
    read temp
    sum=$[sum+temp]
done
var=$(echo "scale=4;$sum/$count" | bc)
printf %.3f $var
