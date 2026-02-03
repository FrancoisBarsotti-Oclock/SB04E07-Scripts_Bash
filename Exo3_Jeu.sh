#!/usr/bin/env bash

secret=$((RANDOM % 100 + 1)) # Générer un nombre aléatoire entre 1 et 100
attempts=0 # Compteur d'éssaies

echo "Devine le nombre (entre 1 et 100)" # Demande au joueur de proposer un nombre

while true; do # Boucle infinie: tant que le nombre n'est pas trouvé
  read -r -p "Disle-moi ici : " proposition # -r évite que les \ soient interprétés
  # -p affiche le prompt

  if ! [[ "$proposition" =~ ^[0-9]+$ ]]; then # Vérification que la saisie soit que des chiffres
    # ! veut dire "si ce n'est pas vrai" 
    echo "Erreur : entre un nombre." # Signale Erreur et invite à n'utiliser que des nombres
    continue # Revient au début de la bouche (sans compter la tentative)
  fi

  if (( proposition < 1 || proposition > 100 )); then # Avec un test arithmétique, on cherche à vérifier que le nombre est bien dans 1-100.
    echo "Erreur : le nombre doit être entre 1 et 100." # Signale l'erreur d'être sorti du rang
    continue # Revien au début de la boucle (sans compter la tentative)
  fi

  attempts=$((attempts + 1)) # incrémente le compteur de tentatives

  if (( proposition < secret )); then # Compare la proposition (si moins que) avec le nombre à deviner
    echo "C'est Plus grand" # Propose de viser plus haut
  elif (( proposition > secret )); then # Compare la proposition (si plus que) avec le nombre à déviner
    echo "C'est Plus petit" # Propose de viser plus bas
  else # Compare la proposition (sinon égalité, alors c'est gagné)
    echo "Bravo ! Vous l'avez eu en $attempts tentative(s)." # Message de victoire avec Numéro de tentatives
    break # Sortie (stop) de la boucle, si le nombre est déviné
  fi # Fin de la dernière condition
done # Fin de la boucle