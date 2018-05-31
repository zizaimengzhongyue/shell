read num 
num=`echo $num | tr -d "\r"`
array=()
read str 
str=`echo $str | tr -d "\r"`
for line in `echo $str | tr ' ' '\n' | sort -n`
do
    array[count]=$line
    count=($count+1)
done
ln=($num-2)
index=0
flag=0
while (($index < $ln))
do
    if ((${array[$index]} < ${array[($index+1)]}))
    then
        flag=1
        echo ${array[$index]}
        exit
    fi
    index=($index+2)
done
if(($flag<1))
then
    echo ${array[($num-1)]}
fi
