read str
var=$(echo "scale=30;$str" | bc)
printf %.3f $var
