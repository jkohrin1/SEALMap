cat Operators.txt | sed 's/\(([0-9]*.[0-9]*\) \(, -[0-9]*.[0-9]*)\)/\2\1/' | sed 's/, //2'| sed 's/)(/ , /' | sed 's/-/(-/' | sed 's/$/)/' | sed 's/[\t][\t]/\t/' | sed 's/^/"Name": "/' | sed 65's/"Name.*//' | sed 's/\t/\t"Hometown": "/' | sed 's/\t/"\t/' | sed 's/\t\t/"\t\t/' | sed 's/\(^.*\t\t\)\((.*)\)/\2\t\1/' | sed 's/^/"coordinates": [/' | sed 's/(//' | sed 's/)/]\t/' | sed 65's/^.*$//' | sed 's/"coordinates"/\t{\n\t"type": "Feature",\n\t"geometry":{\n\t"type": "Point",\n\t"coordinates"/' | sed 's/\t"Name"/\n\t},\n\t"properties":{\n\t"Name"/' | sed 's/"H/,\n\t"H/' | sed 's/\("Hometown":.*$\)/\1\n\t\t\t}\n\t},/' | sed 704's/,/\n]\n}/' | sed 1's/{/{\n\t"type": "FeatureCollection",\n\t"features": [\n\t{/1' | sed 187's/,//' | sed 188's/"Harry Humphries"/"Harry Humphries" ,\n/' | sed 463's/,//' | sed 464's/"Howard E. Wasdin"/"Howard E. Wasdin" ,\n/' | cat > FinalOperators.json
