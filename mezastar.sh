#/bin/bash

rm -rf ./data/*.*
rm -rf ./html/*.*
rm -rf ./tmp/*.*

echo "\"name\",\"jname\",\"tmname\",\"star\",\"symbol\",\"type1\",\"type2\",\"setno\",\"tagno\",\"energy\",\"grade\",\"item\",\"max\",\"zcrystal\",\"mega\",\"move\",\"movetype\",\"maxmove\",\"maxmovetype\",\"zmove\",\"zmovetype\",\"hp\",\"atk\",\"def\",\"spatk\",\"spdef\",\"spd\",\"dex\",\"jdex\",\"tag\",\"tagms\",\"tagmove\",\"tagmovetype\"" > data.csv

./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Set_1_(Mezastar)&action=edit'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Set_2_(Mezastar)&action=edit'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Set_3_(Mezastar)&action=edit'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Set_4_(Mezastar)&action=edit'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Super_Tag_set_1_(Mezastar)&action=edit'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Super_Tag_set_2_(Mezastar)&action=edit'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Super_Tag_set_3_(Mezastar)&action=edit'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Super_Tag_set_4_(Mezastar)&action=edit'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Super_Tag_set_5_(Mezastar)&action=edit'
./master-extract.sh 'https://bulbapedia.bulbagarden.net/w/index.php?title=Promotional_tags_(Mezastar)&action=edit'