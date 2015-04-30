#!/bin/bash

while true
do read -p "Word ? (break for save)\n" text && echo $text >> original
if [ $text = "break" ]
then break
fi
done
for i in `cat original | sed 's/\n//'` ; do echo "msgid \"$i\"\\nmsgstr \"\"\\n" >> bot.pot ; done
