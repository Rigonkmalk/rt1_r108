# TP Evaluation

# Partie 1 : Création, modification et navigation dans l'arborescence

## 1. Création de répertoire

```bash
# Create multiple directories using brace expansion
mkdir ~/{Projets,Docs,Scripts}/
mkdir ~/Projets/Sous-Repertoire/
mkdir ~/Docs/Archives/
```

## 2. Création de fichiers

```bash
# Create empty files
touch ~/Projets/projet1.txt ~/Projets/projet2.txt
# Write text to file
echo -e "Ajout de texte" > ~/Projets/projet1.txt
# Add execute permission for user and group
chmod ug+x ~/Projets/projet1.txt
```

## 3. Navigation

```bash
╭─pazema@CNTR-LNX-A108 ~/devel/rt1_r108/tp_eval  ‹feat/tp_eval*›
╰─➤  ls -laR ~/{Projets,Docs,Scripts}
/home/pazema/Projets:
drwxrwxr-x   - pazema 20 Oct 08:41 .
drwxr-x---@  - pazema 20 Oct 08:41 ..
drwxrwxr-x   - pazema 20 Oct 08:41 Sous-Repertoire
.rwxrwxr--  15 pazema 20 Oct 08:41 projet1.txt
.rw-rw-r--   0 pazema 20 Oct 08:41 projet2.txt

/home/pazema/Projets/Sous-Repertoire:
drwxrwxr-x - pazema 20 Oct 08:41 .
drwxrwxr-x - pazema 20 Oct 08:41 ..

/home/pazema/Docs:
drwxrwxr-x  - pazema 20 Oct 08:41 .
drwxr-x---@ - pazema 20 Oct 08:41 ..
drwxrwxr-x  - pazema 20 Oct 08:41 Archives

/home/pazema/Docs/Archives:
drwxrwxr-x - pazema 20 Oct 08:41 .
drwxrwxr-x - pazema 20 Oct 08:41 ..

/home/pazema/Scripts:
drwxrwxr-x  - pazema 20 Oct 08:41 .
drwxr-x---@ - pazema 20 Oct 08:41 ..
```

## 4. Suppression d'un fichiers

```bash
# Delete a file
rm ~/Projets/projet2.txt
```

# Partie 2 : Listage et interprétation des résultats

## 1. Listage simple

```bash
# Simple listing of home directory
ls ~
```

## 2. Options de Listage

```bash
# Long format with details
ls -l ~
# Show hidden files
ls -a ~
# Human-readable file sizes
ls -lh ~
```

## 3. interprétation des résultats

```bash
ls -l
#[...]
drwxrwxr-x    - pazema 20 Oct 08:41 Scripts
```
`drwxrwxr-x` : La liste des permissions sur le dossier Scripts(d : directory) avec pour description : Le propriétaire a tous les droits, les utilisateurs du groupe ont le droit de lire et d'écrire, les autres utilisateurs ont le droit de lire et d'exécuter.

`pazema` : Utilisateur propriétaire du dossier Scripts.

`20` : Taille du dossier Scripts en octets.

`Oct 08:41` : Date de dernière modification du dossier Scripts.

`Scripts` : Nom du dossier Scripts.

## 4. Liens

```bash
# Create a hard link
ln ~/Projets/projet1.txt ~/Scripts/PRJ.txt
```

# Partie 3 : Manipulation des fichiers

## 1. Copie et déplacement de fichiers

```bash
# Copy file to another location
cp ~/Projets/projet1.txt ~/Docs/Archives/archive_projet1.txt
# Add execute permission for all users
chmod a+x ~/Docs/Archives/archive_projet1.txt
```

## 2. Recherche dans un fichier

```bash
# Find lines starting with 'a' and ending with 'e'
grep "^a.*e$" ~/Dico.txt > ~/Scripts/PRJ.txt
```

```bash
# Count lines starting with 'R'
grep "^R.*" ~/Dico.txt | wc -l
```

## 3. Affichage

```bash
# Display file content
cat ~/Scripts/PRJ.txt
```

NB : La commande `more` peux aussi être utilisé pour parcourir le contenu du fichier de manière interactive.

## 4. Recherche dans un fichier

```bash
# Case-insensitive: lines starting with a/A and ending with e/E
grep "^[aA].*[eE]$" ~/Dico.txt > ~/Scripts/PRJ.txt
```

```bash
# Count lines starting with r or R
grep "^[rR].*" ~/Dico.txt | wc -l
```

## 5. Affichage

```bash
cat ~/Scripts/PRJ.txt
```

NB : La commande `more` peux aussi être utilisé pour parcourir le contenu du fichier de manière interactive.

# Partie 4 : Création d'un script bash

## 1. Problématique

## 2. Exécution

```bash
# Make script executable and run it
chmod +x check_files.sh
./check_files.sh toto.txt
```

```txt
Le fichier toto.txt n'existe pas
```

```bash
./check_files.sh ~/Projets/projet1.txt
```

```txt
Le fichier passé en argument existe et le nombre de ligne qu'il contient est 2 /home/pazema/Projets/projet1.txt
```

à adapter selon la demande du TP :-)
