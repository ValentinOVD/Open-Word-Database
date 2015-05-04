# [![Build Status](https://travis-ci.org/ValentinOVD/Open-Word-Database.svg?branch=botupload)](https://travis-ci.org/ValentinOVD/Open-Word-Database) Open-Word-Database [![Bountysource](https://www.bountysource.com/badge/team?team_id=76329&style=raised)](https://www.bountysource.com/teams/vovd?utm_source=vOVD&utm_medium=shield&utm_campaign=raised)
  
A project for creating a big dictionnary which contains all languages !    
    
    
We have 666 reviewed words + 11896 auto-translated words in French !

We have 12562 auto-translated words in German, Japanese, Maltese and Russian !

We have 6643 auto-translated words in Greek !

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
  You can test Open Word Database by using the translation script and the fr.po located in this branch (The POs located in the botupload branch should also worked).  

  Example :
  ./translation-en-to-x.sh en-fr computer
  		
  The result is ordinateur (the french word of computer).  
			
		
  ./translation-x-to-en.sh en-fr ordinateur
  		
  The result is computer.  
		
You can also use gettext for translating word.  
		
Install en_fr.po using sweetinstall.sh  
		
And after you can use gettext : echo "\`gettext en-fr computer\`"
