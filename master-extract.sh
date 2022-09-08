curl $1 -o ./tmp/master-data.html

sed -n '/{{MezastarExpansionList\/entry/,/}}/p' ./tmp/master-data.html | sed -n '/|/,/=/p' > ./tmp/master-data-ex.txt

while read var; do
    value=`echo $var | grep -o -P '(?<={{OBP\|).*?(?=\|)'`
    key=`echo $var | grep -o -P '(?<=\|).*?(?=\|{{)'`
    url=`echo "https://bulbapedia.bulbagarden.net/w/index.php?title="$value"_($key)&action=edit" | sed 's/ /_/g'`
    filename=`echo "$key-$value" | sed 's/ /_/g'`
    echo "$url"
    ./extract.sh "$url" "$filename"
done < ./tmp/master-data-ex.txt