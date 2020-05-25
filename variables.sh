#!/bin/bash
read -p 'Entre votre prenom : ' -n 7 nom
message="bonjour tres cher $nom"
echo "le message est : $message "
read -p 'Entre le code desamorcage de la bombe (vous avez 5 secondes)  ' -t 5 -s code
echo -e "\nboum !\nTrop tard le code est $code"
echo "Votre éditeur par défaut est $EDITOR"
