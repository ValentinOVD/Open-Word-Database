#!/bin/bash
echo "Type a word and enter :)"
echo "For save your work and create the bot.pot, type break and enter"
while true
do read -p "Word ? " text
if [ $text = "break" ]
then break
fi
echo $text >> original
done
for i in `cat original | sed 's/\n//'` ; do echo "msgid \"$i\"\\nmsgstr \"\"\\n" >> bot.pot ; done
rm original
