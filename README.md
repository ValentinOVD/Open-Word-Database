# [![Build Status](https://travis-ci.org/ValentinOVD/Open-Word-Database.svg?branch=botupload)](https://travis-ci.org/ValentinOVD/Open-Word-Database) Open-Word-Database [![Bountysource](https://www.bountysource.com/badge/team?team_id=76329&style=raised)](https://www.bountysource.com/teams/vovd?utm_source=vOVD&utm_medium=shield&utm_campaign=raised)
  
A project for creating a big dictionnary which contains all languages !    
    
    
We have 666 reviewed words + 11896 auto-translated words in French !

We have 12562 auto-translated words in German, Greek, Japanese, Maltese and Russian !  
  
We have 2683 auto-translated words in Arabic !  
  
We have 2682 auto-translated words in Italian !  
  
We have 2679 auto-translated words in Dutch !     
      
    
You can checkout the po in the botupload branch : https://github.com/ValentinOVD/Open-Word-Database/tree/botupload

# How to help ?

  
 - Add all english word you know using botscript.sh (launch the script by using ./botscript.sh)  
 and Send us the bot.pot created with the script
 Thanks for the help :)
 - You can translate the english words on Transifex : https://www.transifex.com/projects/p/database/
  
  
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

And after you can use gettext : echo "\`gettext en-fr computer\`"
