<center>

# R108
# TP3 : Programmation Shell

<u>Objectif</u>: Pratiquer les bases de l'écriture de scripts shell

<u>**Exercice 1**</u> – Exemple de programme shell

1) Que fait le programme shell suivant, dont le nom est mystere ?

<div style="text-align: left">

```bash
   #!/bin/sh
   if [ $# -ne 1 ]; then
    echo "Fournir un nom en parametre"
    exit 1
   fi
   if ( test -d "$1" ); then
    echo "Répertoire "$1" existe déja"
    exit 0
   else
    echo "Script : "$0" nom de repertoire: "$1" "
    mkdir "$1"
   fi 
```

</div>

2) Proposez un exemple d'appel du programme `mystere`.

<u>**Exercice 2**</u> – La boucle while

Écrire un programme shell qui affiche les arguments du programme, dans l'ordre d'apparition
(1er argument en premier). 
Si le programme n'a aucun argument, afficher « sans argument ».

<div style="text-align: left">

**Indication** :warning: : Utilisez la commande shift ainsi que les arguments ($x).

</div>

<u>**Exercice 3**</u> – La boucle for

Écrire un programme shell qui affiche tous les sous-répertoires du répertoire courant, en
utilisant une boucle.

<div style="text-align: left">

**Indication** :warning: : Utilisez une variable (ex : rep) et le symbole joker *. Testez pour chaque
occurrence le type (-d pour directory).
</div>

<u>**Exercice 4**</u> - Les conditionnelles imbriqués

Écrire un programme shell qui accepte 2 paramètres. 

Le premier paramètre est +r, -r, +w ou -w, et le deuxième paramètre spécifie une extension de nom de fichiers. 

En fonction de la valeur du premier paramètre, le programme modifiera les droits du groupe de tous les fichiers du
répertoire courant dont l'extension est égale au deuxième paramètre.
Pour contrôle, avant chaque modification des droits sur un fichier, le programme affichera le nom du fichier. 

<u>Exemple d'utilisation (le script s'appelle droitsfichiers)</u> :

<div style="text-align: left">

```bash
droitsfichiers +w .txt
```
</div>
</center>