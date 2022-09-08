curl "$1" -o "./html/$2.html" -s

sed -n '/{{Mezastar/,/}}/p' ./html/$2.html | grep "|" | sed 's/}//g' > ./tmp/data-ex.txt

name=""
jname=""
tmname=""
star=""
symbol=""
type1=""
type2=""
setno=""
tagno=""
energy=""
grade=""
item=""
max=""
zcrystal=""
mega=""
move=""
movetype=""
maxmove=""
maxmovetype=""
zmove=""
zmovetype=""
hp=""
atk=""
def=""
spatk=""
spdef=""
spd=""
dex=""
jdex=""
tag=""
tagms=""
tagmove=""
tagmovetype=""

echo -n "" > ./data/$2.txt

while read var; do
    var=`echo $var | sed 's/,/;/g' | sed "s/\"/'/g"`
    key=`echo $var | grep -oP '(?<=\|).*?(?=\=)'`
    value=`echo $var | grep -o -P '(?<=\=).*'`
    echo "$key : $value" >> ./data/$2.txt
    declare "$key"="$value"
done < ./tmp/data-ex.txt

rm -f ./tmp/data-ex.txt

echo "Added: $setno-$tagno : $name"

echo "\"$name\",\"$jname\",\"$tmname\",\"$star\",\"$symbol\",\"$type1\",\"$type2\",\"$setno\",\"$tagno\",\"$energy\",\"$grade\",\"$item\",\"$max\",\"$zcrystal\",\"$mega\",\"$move\",\"$movetype\",\"$maxmove\",\"$maxmovetype\",\"$zmove\",\"$zmovetype\",\"$hp\",\"$atk\",\"$def\",\"$spatk\",\"$spdef\",\"$spd\",\"$dex\",\"$jdex\",\"$tag\",\"$tagms\",\"$tagmove\",\"$tagmovetype\"" >> data.csv