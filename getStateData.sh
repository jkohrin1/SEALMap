cat Operators.txt | cut -f 3 | sed -e 's/\s/\n/g' | sort | uniq -c | sort -nr | head  -15 | sed 's/,//'| cat > OperatorStates.txt 