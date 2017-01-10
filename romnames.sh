git diff --cached --name-only --diff-filter=ACM | while read -r line ; do
    filename=$(basename "$line" .srm)
    filename=$(basename "$filename" .auto)
    filename=$(basename "$filename" .state)
    filename="${filename%.state[0-9]}"
    echo "$filename"
done
