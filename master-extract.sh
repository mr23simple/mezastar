curl $1 -o ./tmp/master-data.html -s
echo "Downloading: $1"

cat ./tmp/master-data.html | grep '{{MezastarExpansionList/entry' | sed -n '/|/,/=/p' > ./tmp/master-data-ex.txt

while read var; do
    key=`echo $var | grep -o -P '(?<=\|).*?(?=\|{{)'`
    value=`echo $var | grep -o -P '(?<={{OBP\|).*?(?=\|)'`
    if [[ $key == 'P' ]]; then
        key=`echo $var | grep -o -P '(?<={{OBP\|).*?(?=}}\|)' | grep -o -P '(?<=\|).*'`
    fi
    url=`echo "https://bulbapedia.bulbagarden.net/w/index.php?title="$value"_($key)&action=edit" | sed 's/ /_/g'`
    filename=`echo "$key-$value" | sed 's/ /_/g' | sed 's/\//_/g'`
    echo "Downloading: $url | $filename"
    ./extract.sh "$url" "$filename"
done < ./tmp/master-data-ex.txt

rm -f ./tmp/master-data.html ./tmp/master-data-ex.txt