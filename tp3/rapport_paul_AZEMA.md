# Exemple de programme shell

1) 
En premier lieu, le programme vérifie si un argument existe,
Si ce n'est pas le cas, un echo va être appelé puis exit le programme en argument
1 (programme executé sans succès).
En second temps, si le premier argument existe, le programme va vérifier si le dossier
correspondant au premier argument inscrit existe.
Si il existe déjà, un echo va être appelé puis un exit pour quitter le programme
en argument 0 (programme executé avec succès).
Dans le dernier temps, le programme après avoir vérifier si le dossier existe correspondant à ton argument, si ce n'est pas le cas et que le dossier n'existe pas,
le programme va appeler un echo et créer un dossier correspondant au premier argument.

2)

bash mystere.sh test

Permet de créer un dossier test depuis le programme.