# R108
## TP3 : Programmation Shell

__objectif__ : Pratiquer les bases de l'écriture de scripts shell

### **Exercice 1**– Exemple de programme shell

1) Que fait le programme shell suivant, dont le nom est `mystere` ?

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

### **Exercice 2** – La boucle while

Écrire un programme shell qui affiche les arguments du programme, dans l'ordre d'apparition
(1er argument en premier). 
Si le programme n'a aucun argument, afficher « sans argument ».

**Indication** ⚠ : Utilisez la commande shift ainsi que les arguments ($x).

### **Exercice 3** – La boucle for

Écrire un programme shell qui affiche tous les sous-répertoires du répertoire courant, en
utilisant une boucle.

**Indication** ⚠ : Utilisez une variable (ex : rep) et le symbole joker *. Testez pour chaque
occurrence le type (-d pour directory).

### **Exercice 4** - Les conditionnelles imbriqués

Écrire un programme shell qui accepte 2 paramètres. 

Le premier paramètre est +r, -r, +w ou -w, et le deuxième paramètre spécifie une extension de nom de fichiers. 

En fonction de la valeur du premier paramètre, le programme modifiera les droits du groupe de tous les fichiers du
répertoire courant dont l'extension est égale au deuxième paramètre.
Pour contrôle, avant chaque modification des droits sur un fichier, le programme affichera le nom du fichier. 

Exemple d'utilisation (le script s'appelle droitsfichiers) :

```bash
# Add write permission to all .txt files for the group
droitsfichiers +w .txt
```

### **Exercice 5** – Le `case` et la saisie clavier

Écrire un programme shell `menu` qui affiche un menu à l'utilisateur, lit son choix au clavier,
puis exécute l'action correspondante :

1. Afficher la date et l'heure
2. Afficher le nom de l'utilisateur courant
3. Afficher le nombre de fichiers du répertoire courant
4. Quitter

Tout autre choix affichera « Choix invalide » et le menu sera réaffiché.
Le programme ne s'arrête que lorsque l'utilisateur saisit `4`.

**Indication** ⚠ : Utilisez une boucle `while true`, la commande `read` pour lire la saisie,
et la structure `case ... in ... esac` pour traiter les différents choix.
Pensez à `break` pour sortir de la boucle.

```bash
# Squelette attendu
while true; do
  echo "1) Date  2) Utilisateur  3) Nb fichiers  4) Quitter"
  read -p "Votre choix : " choix
  case "$choix" in
    1) ... ;;
    *) echo "Choix invalide" ;;
  esac
done
```
