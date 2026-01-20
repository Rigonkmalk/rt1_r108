# TP1 RT1

1. Répertoire personnel de l'utilisateur

1.
```bash
# Print home directory path
echo $HOME
/home/student/
```

2.

```bash
# Print current working directory
pwd
```

3.
```bash
 paulazema@MacBook-Pro-3  ~/devel/rt1/tp1  export | grep HOME
HOME=/Users/paulazema
```

4.
```bash
# Navigate to root directory
cd /
```


5.
```bash
# List files with detailed info
ls -l
```

2. Editeurs de textes

1.
```bash
# Go to home directory
cd ~
```

2.
```bash
# Create/edit file with nano editor
nano toto
toto
<C>+X Y
```

3.
```bash
# Show file details
ls -l toto
```

4.
La taille d'un fichier non nommé ne possède que les valeurs brutes inscrite dans ce fichier. N'yant pas de nommage particulier et de nomenclature formaté (txt, md …).

Le premier byte est la forme du fichier.
Les 4 autres bytes (ou plus selon les caractères mis en place) seront les valeurs ascii du caractères.


5.
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