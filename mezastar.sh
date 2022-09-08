#/bin/bash

# https://bulbapedia.bulbagarden.net/wiki/Super_Tag_set_4_(Mezastar)
# https://bulbapedia.bulbagarden.net/wiki/Set_4_(Mezastar)

rm -rf ./data/*.*
rm -rf ./html/*.*
rm -rf ./tmp/*.*

echo "\"name\",\"jname\",\"tmname\",\"star\",\"symbol\",\"type1\",\"type2\",\"setno\",\"tagno\",\"energy\",\"grade\",\"item\",\"max\",\"zcrystal\",\"mega\",\"move\",\"movetype\",\"maxmove\",\"maxmovetype\",\"zmove\",\"zmovetype\",\"hp\",\"atk\",\"def\",\"spatk\",\"spdef\",\"spd\",\"dex\",\"jdex\",\"tag\",\"tagms\",\"tagmove\",\"tagmovetype\"" > data.csv

./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Set_1_(Mezastar)'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Set_2_(Mezastar)'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Set_3_(Mezastar)'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Set_4_(Mezastar)'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Super_Tag_set_1_(Mezastar)'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Super_Tag_set_2_(Mezastar)'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Super_Tag_set_3_(Mezastar)'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Super_Tag_set_4_(Mezastar)'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Super_Tag_set_5_(Mezastar)'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/wiki/Promotional_tags_(Mezastar)'