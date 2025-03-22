## conditions using  following  operators gt,lt,eq,ne,ge,le

echo "enter a number"
read n
if (( n -gt 10 ))
then 
    echo "$n is greater than 10"
else 
    echo "$n is less than 10 "
fi
## conditions using  following  operators >>,<<,==,!=

echo "enter a value"
read a
echo "enter a value"
read b
if (( a >> b )) 
then 
    echo "$a is greater than $b"
else 
    echo "$a is less than $b "
fi
