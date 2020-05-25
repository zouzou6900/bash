#!/bin/bash

tableau=('valeur1' 'valeur2' 'valeur3')
tableau[5]='valeur5'
echo ${tableau[*]}

