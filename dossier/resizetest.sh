#!/bin/bash

fonction ()
{
ls | convert -resize 50
}
tab=`ls *`
for list in ${tab[@]}
do
	$list
	
done

