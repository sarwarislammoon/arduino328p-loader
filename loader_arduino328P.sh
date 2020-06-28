source PORT.txt

PATH=$(pwd)/donotedit
#PATH_FW=$(pwd)/FW

FW=(*.hex)



$PATH/avrdude.exe -C $PATH/avrdude.conf -v -patmega328p -c arduino -P $PORT -b115200 -D -Uflash:w:$FW:i   ||
$PATH/avrdude.exe -C $PATH/avrdude.conf -v -patmega328p -c arduino -P $PORT -b57600  -D -Uflash:w:$FW:i   ||


$PATH/avrdude -C $PATH/avrdude.conf -v -p atmega328p -c arduino -P $PORT -b115200 -D -Uflash:w:fw.hex:i   ||
$PATH/avrdude -C $PATH/avrdude.conf -v -p atmega328p -c arduino -P $PORT -b57600  -D -Uflash:w:fw.hex:i   ||

exit
