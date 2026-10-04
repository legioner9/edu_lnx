while IFS= read -r line 
do
  echo "$line"
done < "${1:-/dev/stdin}"