#!/bin/bash 
#francois
dossier=dossier;
for file in "$dossier"/*.{jpeg,jpg};
do
	output="$(basename "$file")"
	echo "image: $file RESIZED 50%"/""
	convert -resize 50% $file $dossier/"RESIZE_"$(basename $file);
done

ls -l dossier
