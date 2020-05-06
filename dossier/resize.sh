#!/bin/bash

fonction() {
	convert $i -resize 200x100 resize-$i
}
tab=('jpg' 'jpeg' 'png')
for i in ls
do
	$i
done
