Exercice 1 :

```bash
#!/bin/sh
# Get machine name and display user info using environment variables
machine=$(uname)
echo "Vous êtes l'utilisateur $USER sur la machine $machine, votre répertoire utilisateur est $HOME"
```

Exercice 2 :

```bash
#!/bin/sh
# Check if argument is provided
if [ $# -le 0 ]
then
	echo "Il manque un argument"
else
	# Try to create directory
	mkdir $1
	# $? contains exit status of last command (0 = success)
	if [ $? -eq 0 ]
	then
		echo "le dossier $1 à été bien créé"
	else
		echo "le dossier $1 existe déjà"
	fi
fi
```

Exercice 3 :

```bash
#!/bin/sh
# Number guessing game

# Get secret number from first player
echo "Veuillez entrer une valeur à deviner entre 1 et 100"
read a
clear

# Get guess from second player
echo "Veuillez entrer un nombre entre (1 - 100)"
read x

# Loop until correct guess
while [ $x -ne $a ]; do
  clear
  # Give hint based on comparison
  if [ $x -gt $a ]; then
    echo "plus petit"
  else
    echo "plus grand"
  fi
  echo "Veuillez entrer un nombre entre (1 - 100)"
  read x
done

echo "Bravo !"
```