# Exercice 2
# Créer un script qui génère une archive des fichiers d'un répertoire donné en argument, 
# en les compressant dans une archive tar.gz. Le script doit inclure la date actuelle 
# dans le nom du fichier de sauvegarde.

#!/bin/bash
if (( $# != 1 ))
then
    echo "1 argument requis : $0 <repertoire_a_sauvegarder>"
    exit 1
fi

SOURCE=$1

if [ ! -d $SOURCE ]
then
    echo "Le répertoire n'existe pas"
    exit 1
fi

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
