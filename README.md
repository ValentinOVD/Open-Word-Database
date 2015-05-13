# [![Build Status](https://travis-ci.org/ValentinOVD/Open-Word-Database.svg?branch=botupload)](https://travis-ci.org/ValentinOVD/Open-Word-Database) Open-Word-Database [![Bountysource](https://www.bountysource.com/badge/team?team_id=76329&style=raised)](https://www.bountysource.com/teams/vovd?utm_source=vOVD&utm_medium=shield&utm_campaign=raised)
  
A project for creating a big dictionnary which contains all languages !    
You can join us on #owd at Freenode 
 
# Open Word Database is now available online !

You can check it out here : https://valentinovd.sollidi.us/owd/

# News

For v0.2, there are two versions :

v0.2 (The translations will only be updated with reviewed translations and the software will be updated when a new 0.x release is released.)
RR(v0.1) (The translations and the software will be updated with master each time you startup the software)
RR is already available ! Use the console.sh from master or from the latest v0.1.x* for use RR.

v0.2, the first stable version will be available in July.

*: v0.1.x is automaticly updated with the newest master version.

# Status
    
We have 666 reviewed words + 11896 auto-translated words in French !

We have 520 reviewed words + 12042 auto-translated words in Portugese !     

We have 12562 auto-translated words in German, Greek, Japanese, Maltese and Russian !  
  
We have 8786 auto-translated words in Arabic !  
  
We have 11212 auto-translated words in Italian !  
  
We have 8816 auto-translated words in Dutch !     
      
    
You can checkout the po in the Open-Word-Database-m2 git using the po command in console.sh .

# How to help ?

  
 - You can translate english words into your language on Transifex : https://www.transifex.com/projects/p/database/
  
  
# How to test ?
  You can test Open Word Database by using console.sh :
./console.sh

po

yes

translate

1

fr

hello

		
You can also use gettext for translating word.  
		
For that, install the mo files :

./console.sh

mo

yes

yes

And after you can use gettext : echo "\`gettext fr computer\`"

