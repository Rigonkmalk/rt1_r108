#!/bin/sh
# Display statistics about a directory: files, subdirectories, total size

# Error function: writes the message on stderr and exits with code 1
erreur() {
	echo "Erreur : $1" >&2
	exit 1
}

# Check that exactly one parameter was given
if [ $# -ne 1 ]; then
	erreur "usage : $0 <repertoire>"
fi

# Check that this parameter is really a directory
if [ ! -d "$1" ]; then
	erreur "le repertoire \"$1\" n'existe pas"
fi

# Counters
nb_fichiers=0
nb_repertoires=0
taille_totale=0

# Loop over every entry of the directory
for element in "$1"/*; do
	# When the directory is empty the pattern is not expanded: skip it
	[ -e "$element" ] || continue

	if [ -d "$element" ]; then
		nb_repertoires=$((nb_repertoires + 1))
	elif [ -f "$element" ]; then
		nb_fichiers=$((nb_fichiers + 1))
		taille=$(wc -c < "$element")
		taille_totale=$((taille_totale + taille))
	fi
done

echo "Fichiers ordinaires : $nb_fichiers"
echo "Sous-répertoires    : $nb_repertoires"
echo "Taille totale       : $taille_totale octets"
