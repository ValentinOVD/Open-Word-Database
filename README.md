# Open-Word-Database [![Bountysource](https://www.bountysource.com/badge/team?team_id=76329&style=raised)](https://www.bountysource.com/teams/vovd?utm_source=vOVD&utm_medium=shield&utm_campaign=raised)
  
A project for creating a big dictionnary which contains all languages !

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
		
And after you can use gettext : echo "\`gettext en-fr computer\`
