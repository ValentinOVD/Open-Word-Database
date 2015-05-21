#!/bin/sh
printf "Type an english word and enter\n"
printf "We need all english words :-) Please type words who aren't in OWD here :-)"
printf "For save your work type break, this will create the pullrequest.pot that you can send to http://github.com/valentinovd/owd-pullrequest\n"
while true
do read -p "Word ?\n" text
if [ $text = "break" ]
then break
fi
echo $text >> original
done
for i in `cat original | sed 's/\n//'` ; do printf "msgid \"$i\"\\nmsgstr \"\"\\n\n" >> pullrequest.pot ; done
rm original
