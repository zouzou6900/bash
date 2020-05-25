#!/bin/bash

case $1 in
	"amaury")
		read -p 'Entre ton nom : ' nom
		echo "bonjour $1 $nom"
		;;
	"jordane")
		read -p 'Entre ton nom : ' nom
		echo  "bonjour $1 $nom"
		;;
	*)
		echo "je te connais pas ouste!"
		;;
esac
