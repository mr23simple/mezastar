curl $1 -o ./html/$2.html

sed -n '/{{Mezastar/,/}}/p' ./html/$2.html | sed -n '/|/,/=/p' > ./tmp/data-ex.txt

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
    key=`echo $var | grep -oP '(?<=\|).*?(?=\=)'`
    value=`echo $var | grep -o -P '(?<=\=).*' | sed 's/}}//'`
    echo "$key : $value" >> ./data/$2.txt
    declare "$key"="$value"
done < ./tmp/data-ex.txt

echo "\"$name\",\"$jname\",\"$tmname\",\"$star\",\"$symbol\",\"$type1\",\"$type2\",\"$setno\",\"$tagno\",\"$energy\",\"$grade\",\"$item\",\"$max\",\"$zcrystal\",\"$move\",\"$movetype\",\"$maxmove\",\"$maxmovetype\",\"$zmove\",\"$zmovetype\",\"$hp\",\"$atk\",\"$def\",\"$spatk\",\"$spdef\",\"$spd\",\"$dex\",\"$jdex\",\"$tag\",\"$tagms\",\"$tagmove\",\"$tagmovetype\""

echo "\"$name\",\"$jname\",\"$tmname\",\"$star\",\"$symbol\",\"$type1\",\"$type2\",\"$setno\",\"$tagno\",\"$energy\",\"$grade\",\"$item\",\"$max\",\"$zcrystal\",\"$move\",\"$movetype\",\"$maxmove\",\"$maxmovetype\",\"$zmove\",\"$zmovetype\",\"$hp\",\"$atk\",\"$def\",\"$spatk\",\"$spdef\",\"$spd\",\"$dex\",\"$jdex\",\"$tag\",\"$tagms\",\"$tagmove\",\"$tagmovetype\"" >> data.csv