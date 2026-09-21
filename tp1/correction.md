# TP1 RT1

1. Répertoire personnel de l'utilisateur

1.
Cette commande est un argument qui est présent par défaut dans le shell. L'argument `$HOME` contient le chemin vers le répertoire personnel de l'utilisateur.
```bash
# Print home directory path
echo $HOME
/home/student/
```

2.
pwd pour 'print working directory' est une commande me permettant de savoir où mon terminal est actuellement positionné.
```bash
# Print current working directory
pwd
```

3.
La commande 'export' permet de lister les variables d'environnement qui est actuellement chargé dans mon terminal. La commande 'grep' qui est ensuite utilisé me permet de filtrer les résultats pour afficher uniquement les variables qui contiennent le mot 'HOME'.
```bash
paulazema@MacBook-Pro-3  ~/devel/rt1/tp1  export | grep HOME
HOME=/Users/paulazema
```

4.
La commande 'cd' permet de changer de répertoire. L'argument '/' permet de naviguer vers le répertoire racine.
```bash
# Navigate to root directory
cd /
```


5.
La commande 'ls' permet de lister les fichiers et répertoires dans le répertoire courant. L'option '-l' permet d'afficher les informations détaillées des fichiers.
```bash
# List files with detailed info
ls -l
```

2. Editeurs de textes

1.
La commande 'cd' permet de changer de répertoire. L'argument '~' permet de naviguer vers le répertoire personnel, note, la variable $HOME permet également de naviguer vers le répertoire personnel.
```bash
# Go to home directory
cd ~
```

2.
La commande 'nano' permet d'éditer des fichiers texte. L'argument 'toto' permet de créer ou d'éditer le fichier 'toto'.
```bash
# Create/edit file with nano editor
nano toto
```

3.
La commande 'ls' permet de lister les fichiers et répertoires dans le répertoire courant. L'option '-l' permet d'afficher les informations détaillées des fichiers.
```bash
# Show file details
ls -l toto
```

4.
La taille d'un fichier non nommé ne possède que les valeurs brutes inscrite dans ce fichier. N'yant pas de nommage particulier et de nomenclature formaté (txt, md …).

Le premier byte est la forme du fichier.
Les 4 autres bytes (ou plus selon les caractères mis en place) seront les valeurs ascii du caractères.


5.
cat pour 'concatenate' et afficher le contenu d'un fichier.
```bash
# Display file content
cat toto
```

3. Création d'une arborescence donnée

1.
```bash
# Go to home directory
cd ~
```

2.
```bash
# List directory contents
ls
```

3.
```bash
# Remove all files/folders (use with caution!)
rm -fr *
```

4.

Le resultat attendu c'est que tout soit vide.
