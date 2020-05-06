#!/bin/bash

 out=$(wget -N dossier.zip 2>&1)

 if [[ $? -eq 0 && $out ]]
 then
	 txt=$(unzip -l  dossier.zip *.txt | tail -n 1 | awk 'print $1}')
	 echo "get size of txt : $txt"
 else
	 echo "merde"
	 fi
echo $out
