#!/bin/bash

if [ -d "$HOME/Documents/dossier" ];then
	echo "le dossier existe !";
fi

cd dossier
chemin=`pwd`
echo $chemin

#declaration de tableau associatif
declare -A extensions
files=`$1`
echo -e "$files \n"
#on boucle sur le dossier
for file in $files
do
	#on verifier si c est bien un fichier 
	if [ -f $file ]
		then
		echo -e "$file \n"
		#on recuperer l'extension 
		extension="${file##*.}"
		#on culumer le poid de l extension associete a sa cle
		extensions[$extension]+=$((`du -k "$file" | cut -f1`))
	fi
done
echo ${#extentions[@]}
