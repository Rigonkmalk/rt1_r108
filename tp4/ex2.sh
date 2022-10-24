#!/bin/sh

if [ $# -le 0 ]
then 
	echo "Il manque un argument"
else
	mkdir $1
	if [ $? -eq 0 ]
	then
		echo "le dossier $1 à été bien créé"
	else
		echo "le dossier $1 existe déjà"
	fi
fi
