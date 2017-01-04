git diff --cached --name-only --diff-filter=ACM | while read -r line ; do
    filename=$(basename "$line")
    filename="${filename%%.*}"
    echo "$filename"
done
         