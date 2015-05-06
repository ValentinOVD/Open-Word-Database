#!/bin/bash
export PO=0
clear
echo -e "Welcome on the Open Word Database Console !\n"
wget https://github.com/ValentinOVD/Open-Word-Database/raw/master/console.sh -O console.sh
wget https://github.com/ValentinOVD/Open-Word-Database/raw/master/botscript.sh -O botscript.sh
wget https://github.com/ValentinOVD/Open-Word-Database/raw/master/translation-en-to-x.sh -O translation-en-to-x.sh
wget https://github.com/ValentinOVD/Open-Word-Database/raw/master/translation-x-to-en.sh -O translation-x-to-en.sh
chmod +x botscript.sh translation-x-to-en.sh translation-en-to-x.sh console.sh
clear
echo "Welcome on the Open Word Database Console !"
echo "You can translate into these language : ar, de, el, fr, it, ja ,mt, nl and ru"
echo "Type the command translate :-)"
while true
do read -p ">" text
if [ $text = "break" ]
then break
fi
if [ $text = "force_po" ]
then export PO=1
fi
if [ $text = "translate" ]
then if [ $PO = "0" ]
then echo "For this function, you need to have installed the po files"
echo "Type po for install the po files"
fi
if [ $PO = "1" ]
then read -p "What language ?" textd
read -p "en-to-$textd or $textd-to-en ? (Answer 1 or 2)" text
read -p "What do you want to translate ?" texta

if [ $text = "1" ]
then ./translation-en-to-x.sh $textd $texta
fi
if [ $text = "2" ]
then ./translation-x-to-en.sh $textd $texta
fi
fi
fi
if [ $text = "help" ]
then echo -e "break\nbot\npo\nmo\ntranslate\nyes\nno"
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
wget https://github.com/ValentinOVD/Open-Word-Database-m2/archive/master.tar.gz
tar -xvf master.tar.gz
mkdir po
mv Open-Word-Database-m2-master/*.po po/
rm -r Open-Word-Database-m2-master master.tar.gz
mv po/* ./
export PO=1
echo "Done without any problem"
fi
fi

if [ $text = "mo" ]
then
read -p "Do you want to download the mo files ? (yes/NO)" text
if [ $text = "yes" ]
then
wget https://github.com/ValentinOVD/Open-Word-Database-bin/archive/master.tar.gz
tar -xvf master.tar.gz
mkdir mo
mv Open-Word-Database-bin-master/*.mo mo/
rm -r Open-Word-Database-bin-master master.tar.gz
read -p "Do you want to install the mo files ?" text
if [ $text = "yes" ]
then
sudo mv mo/*.mo /usr/share/locale/$LANGUAG/LC_MESSAGES/
fi

fi
fi

done
rm -r po mo
