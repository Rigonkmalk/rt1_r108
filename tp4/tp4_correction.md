Exercice 1 :

```bash
#!/bin/sh

machine=$(uname)
echo "Vous êtes l'utilisateur $USER sur la machine $machine, votre répertoire utilisateur est $HOME"
```

Exercice 2 :

```bash
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
```

Exercice 3 :

```bash
#/bin/sh

echo "Veuillez entrer une valeur à deviner entre 1 et 100"
read a
clear
echo "Veuillez entrer un nombre entre (1 - 100)"
read x

while [ $x -ne $a ]; do
  clear
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