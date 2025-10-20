#!/usr/bin/env bash
#
# Écrivez un script appelé check_files.sh qui :
# • Vérifie si un fichier donné en argument existe dans le répertoire courant (Sinon,
# affiche un message d'erreur : "Erreur : le fichier n'existe pas".
# • Si le fichier existe, affiche « Le fichier passé en argument existe et le nombre de
# lignes qu'il contient est ...(nombre de lignes).

set -e

files=$1

if [[ ! -f $1 ]]; then
    echo "Le fichier $files n'existe pas"
else
    echo -e "Le fichier passé en argument existe et le nombre de ligne qu'il contient est $(wc -l $1)"
fi
