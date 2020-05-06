#!/bin/bash

#ma version
#wget http://glpi.monkey-class.com/dossier.zip
#unzip dossier.zip -d /home/pi/Documents
cd /home/pi/Documents/dossier
fonction ()
{
	wc -c *.$list    
}
tab=('jpg' 'txt' 'jpeg')
for list in ${tab[@]}
do
	echo "GET SIZE of $list => `fonction` "
	
done

