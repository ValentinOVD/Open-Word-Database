#!/bin/bash

mkdir build && cd build
msgfmt ../en-fr.po -o en-fr.mo
msgfmt ../en-fr_rev.po -o en-fr_rev.mo
echo "You can now use gettext for translate word !"
echo -e 'Example :\necho "\`gettext en-fr computer\`'
