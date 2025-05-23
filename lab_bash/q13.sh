
#!/bin/bash

echo "Enter the number:"
read num
for i in {1..10}
do 
  echo "$num * $i = $((num * i))"
done