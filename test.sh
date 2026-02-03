#!/bin/bash
# Toujours penser au shebang (#!/bin/bash) qui permet de specifier le shell qui lance le script
# Et toujours faire chmod+x <nom_du_script>.sh afin de le rendre exécutable
# Par défaut, si l'on oublie quel est le caractère pour mettre des commentaires, sur VSC, on 
# on peut faire Ctrol + /

# Si l'on met un seul > alors ça écrasse le fichier, s'il existe, et remplace le contenu
echo "Hello World" > ./test.log # Si le fichier n'existe pas encore, il le crée

# >> Permet d'append dans le fichier, donc rajoute à la fin du fichier sans écraser le contenu
echo "Ligne numéro 2" >> ./test.log

# # Sans le -e, le \n ou le \t ne sont pas interprétés, donc ne fonctionne pas et sont affichés comme une chaine de caractere
echo -e "Je suis \n sur 2 lignes" # Le \n marque l'endroit de coupure (retour à la ligne)
echo -e "\t test" # Le \t fait la tabulation à la ligne

# Le nom de la variable et le "=" doivent absolument etre collé pour que cela fonctionne
firstName=François
echo "Bonjour $firstName"

# Pour stocker le contenu d'une commande bash dans une variable, on entour la commande de $(command)
var=$(hostname)
echo $var

# https://buzut.net/maitriser-les-conditions-en-bash/
# Je vérifie que le fichier test.log existe
if [ -f test.log ]
# Si oui, alors
then
    echo "Le fichier de log existe"
# Retour de la méthode python avec elif a la place de elseif
elif [ -f test.sh ]
then
    echo "Le script existe"
# Sinon
else
    echo "Le fichier n'existe pas"
# Pour dire que ma condition est finie, je met fi (if a l'envers)
fi

# -o = -or = ||
# Permet de dire soit l'une soit l'autre ou les 2 conditions doivent etre vrai
# if [ condition1 -o condition2] 
# then
# fi

# -a = -and = &&
# Permet de dire que les 2 conditions doivent etre vrai
# if [ condition1 -a condition2 ]
# then
# fi

# L'equivalent du -Filter -like dans powershell
# Permet de vérifier si une chaine de caractères est contenue dans une autre
# *ois* permet de vérifier qu'il y a les lettres ois dans la variable
# Meme si il ya du texte avant ou apres
# Ou meme si il y en a pas
if [[ $firstName == *ois* ]]
then
    echo "Il y a les lettres ois dans ton prenom"
fi

if [ 100 == 100 ]
then
    echo "OK"
fi

# Pour les comparaisons arithmétique, on va utiliser les ((  ))
# ET SEULEMENT DANS CE CAS
# On peux utiliser < > <= >= != ==
if (( 101 <= 100  ))
then
    echo "c logik"
fi

# https://fr.wikibooks.org/wiki/Programmation_Bash/Boucles
for user in "Camille" "Francois" "Olivier" "Printana"
do
    echo "Bonjour $user"
done

# https://fr.wikibooks.org/wiki/Programmation_Bash/Fonctions
function test() {
    echo "Bonjour $1"
    echo "Bonjour $2"
}

test François Barsotti

# https://fr.wikibooks.org/wiki/Programmation_Bash