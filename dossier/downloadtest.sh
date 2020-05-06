#!/bin/bash
#downloadtest.sh
#wget http://glpi.monkey-class.com/dossier.zip
taille {

read -p "Lien ZIP : " dossier
ext=${dossier##*\.}
base=$(basename -s .zip $dossier)
echo $ext 
echo $base
if [ "$ext" = "zip" ]
then
	out=$(wegt -N $dossier 2>&1)

	if [[ $? -eq 0 && $out ]]
	then
		txt=$(unzip -l $base.zip *.txt | tail -n 1 | awk '{print $1}')

		echo "get size : $txt"
	else
		echo "aucun dossier"
	fi
else
	echo "etete"
fi

}
Taille:x

