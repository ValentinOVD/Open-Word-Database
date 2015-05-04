#!/bin/bash

clear
echo -e "Welcome on the Open Word Database Console !\n"
wget https://github.com/ValentinOVD/Open-Word-Database/raw/master/botscript.sh -O botscript.sh
chmod +x botscript.sh
while true
do read -p ">" text
if [ $text = "break" ]
then break
fi
if [ $text = "help" ]
then echo -e "break\nbot\npo\nmo\nyes\nno"
fi
if [ $text = "transifex" ]
then echo "https://www.transifex.com/projects/p/database/"
fi
if [ $text = "bot" ]
then ./botscript.sh
fi
if [ $text = "po" ]
then
read -p "Do you want to download the po files ? (yes/NO)" text
if [ $text = "yes" ]
then
wget https://github.com/ValentinOVD/Open-Word-Database/archive/botupload.tar.gz
tar -xvf botupload.tar.gz
mkdir po
mv Open-Word-Database-botupload/*.po po/
rm -r Open-Word-Database-botupload botupload.tar.gz
fi
fi

if [ $text = "mo" ]
then
read -p "Do you want to download the mo files ? (yes/NO)" text
if [ $text = "yes" ]
then
wget https://github.com/ValentinOVD/Open-Word-Database/archive/binary-bot.tar.gz
tar -xvf binarybot.tar.gz
mkdir mo
mv Open-Word-Database-binary-bot/*.mo mo/
rm -r Open-Word-Database-binary-bot binary-bot.tar.gz
read -p "Do you want to install the mo files ?" text
if [ $text = "yes" ]
then
sudo mv mo/*.mo /usr/share/locale/$LANGUAG/LC_MESSAGES/
fi

fi
fi

read
done
