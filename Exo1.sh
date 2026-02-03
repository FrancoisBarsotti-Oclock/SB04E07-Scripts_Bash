# Exercice 1
# Écrire un script qui prend en agruments un répertoire source et un répertoire cible,
# puis copie tous les fichiers du répertoire source vers le répertoire cible. 
# Le script doit vérifier si le répertoire cible existe, sinon il doit le créer.

#!/usr/bin/env bash

# Vérification des arguments (2 arguments furnis)
if [ "$#" -ne 2 ]; then # $# = nombre d'arguments
  echo "2 arguments requis: $0 <source> <cible>" #comment utiliser le script $0
  exit 1 # Quitte le scritp avec une erreur si le nombre d'arguments est incorrect.
fi # Fin de la première condition

SOURCE="$1" # Stocke l'argument répertoire SOURCE
TARGET="$2" # Stocke l'argument répertoire cible

# Vérifier que le répertoire SOURCE existe
if [ ! -d "$SOURCE" ]; then # Vérifie que le répertoire SOURCE existe; -d = directory; ! = négation
  echo "Erreur : le répertoire source n'existe pas : $SOURCE"
  exit 1 # Quitte le scritp avec message d'erreur si le répertoire source n'existe pas
fi # Fin de la deuxième condition

# Créer le répertoire cible s'il n'existe pas
if [ ! -d "$TARGET" ]; then # Vérifie si le répertoire cible n'existe pas
  mkdir -p "$TARGET" # Crée le répertoire cible si nécessaire; -p évite l'erreur s'il existe déjà
  echo "Dossier $TARGET créé"
fi # Fin de la troisième condition

# Copier les fichiers
cp -r $SOURCE/* $TARGET/ # Copie tous les fichiers du répertoire source vers le répertoir cible
# -r = récursif (sous-dossiers inclus)

echo "Copie terminée." # Message de fin

# Rappel: pour exécuter: chmod +x <fichier>.sh, puis ./<fichier>.sh <source> <cible>
# et finalement ./<fichier>.sh
