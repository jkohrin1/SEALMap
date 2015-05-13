cat Operators.txt | cut -f 3 | sed -e 's/ , /\n/g' | sort | uniq -c | sort -nr | head  -15 | cat > OperatorCities.txt
