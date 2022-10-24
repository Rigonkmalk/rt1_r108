#/bin/sh

echo "Veuillez entrer une valeur à deviner entre 1 et 100"
read a
clear
echo "Veuillez entrer un nombre entre (1 - 100)"
read x

while [ $x -ne $a ]; do
  if [ $x -gt $a ]; then
    echo "plus petit"
  else
    echo "plus grand"
  fi
  clear
  echo "Veuillez entrer un nombre entre (1 - 100)"
  read x
done

echo "Bravo !"