TP 4 : Programmation shell - suite

**Objectif** : Pratiquer les bases de l'écriture de scripts shell

**Exercice 1** — Utilisation des variables d'environnement

Écrire un script qui affiche "Vous êtes l'utilisateur X sur la machine Y, votre répertoire utilisateur est Z"
en utilisant les variables d'environnement.

X étant le nom d'utilisateur, Y le nom de votre machine et Z votre répertoire personnel.

**Exercice 2** — Statut d'exécution

1. Faire un script qui utilisera la commande mkdir et qui permettra de créer
un répertoire. Votre script recevra le nom du répertoire à créer en tant qu'argument.

Il existe une variable spéciale qui contient après l'exécution de chaque commande
le statut d'exécution de celle-ci sous la forme d'un nombre (=0 si l'exécution s'est bien déroulée).

2. Rechercher sur Internet le nom de cette variable et modifier votre script précédent pour faire afficher ce statut.

Utiliser votre script pour créer un répertoire dans un dossier où vous détenez les droits suffisants (~)

Utiliser votre script pour créer un répertoire dans un dossier où vous ne disposez pas des droits suffisants (/root)

Comparer les résultats des status obtenus lors des deux questions précédentes et en déduire l'utilité de cette variable spéciale.

**Exercice 3** — Petit jeu

Écrire un programme shell qui permet de faire saisir à une personne un nombre compris entre
1 et 100 et d'effacer la saisie ensuite. Cette valeur sera stockée dans une variable.
Vous devrez ensuite par comparaison à la variable saisir un chiffre et afficher "Plus grand" si la variable de départ est
plus grande, "Plus petit" si la variable de départ est plus petite et "Bravo, tu as trouvé" si vous avez saisi la bonne valuer

**Indication** : Utilisez des variables, la commande read permet de stocker la saisie du texte, la commande clear permet de
nettoyer l'écran