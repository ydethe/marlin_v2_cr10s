#! /bin/sh

# Solution trouvee avec Arduino IDE, en cliquant sur Croquis -> Televerser avec un programmateur. Ce qui est dessous est pour memoire, mais ne marche pas

PTH=`realpath $1`
echo $PTH

cd /Applications/Arduino.app/Contents/Java
hardware/tools/avr/bin/avrdude -C hardware/tools/avr/etc/avrdude.conf -v -pm2560 -b 115200 -cusbasp -D -Uflash:w:$PTH:i -P usb


