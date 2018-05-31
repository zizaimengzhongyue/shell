read x
read y
read z
if (( x != y && y != z && x != z))
then
    echo "SCALENE"
elif (( x == y && y == z))
then
    echo "EQUILATERAL"
else
    echo "ISOSCELES"
fi
