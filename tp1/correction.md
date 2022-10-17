# TP1 RT1

1. Répertoire personnel de l'utilisateur

1.
```bash
echo $HOME
/home/student/
```

2.

```bash
pwd
```

3.
```bash
 paulazema@MacBook-Pro-3  ~/devel/rt1/tp1  export | grep HOME
HOME=/Users/paulazema
```

4.
```bash
cd /
```


5.
```bash
ls -l
```

2. Editeurs de textes

1.
```bash
cd ~
```

2.
```bash
nano toto
toto
<C>+X Y
```

3.
```bash
ls -l toto
```

4.
La taille d'un fichier non nommé ne possède que les valeurs brutes inscrite dans ce fichier. N'yant pas de nommage particulier et de nomenclature formaté (txt, md …).

Le premier byte est la forme du fichier.
Les 4 autres bytes (ou plus selon les caractères mis en place) seront les valeurs ascii du caractères.


5.
```bash
cat toto
```

3. Création d'une arborescence donnée

1.
```bash
cd ~
```

2.
```bash
ls 
```

3.
```bash
rm -fr *
```

4.

Le resultat attendu c'est que tout soit vide.