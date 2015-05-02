#!/bin/bash

msgfmt en-fr.po -o en-fr.mo
sudo mv en-fr.mo /usr/share/locale/fr/LC_MESSAGES/

echo "You can now use gettext for translate word !"
echo -e 'Example :\necho "\`gettext en-fr computer\`'
