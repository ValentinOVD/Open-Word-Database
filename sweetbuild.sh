#!/bin/bash

git clone https://github.com/ValentinOVD/Open-Word-Database-m2.git

mkdir build && cd build
msgfmt ../Open-Word-Database-m2/fr.po -o fr.mo
msgfmt ../Open-Word-Database-m2/de.po -o de.mo
msgfmt ../Open-Word-Database-m2/el.po -o el.mo
msgfmt ../Open-Word-Database-m2/ja.po -o ja.mo
msgfmt ../Open-Word-Database-m2/ru.po -o ru.mo
msgfmt ../Open-Word-Database-m2/mt.po -o mt.mo
msgfmt ../Open-Word-Database-m2/ar.po -o ar.mo
msgfmt ../Open-Word-Database-m2/it.po -o it.mo
msgfmt ../Open-Word-Database-m2/nl.po -o nl.mo

echo "You can now use gettext for translate word !"
echo -e 'Example :\necho "\`gettext en-fr computer\`'
