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
firstName=Robin
echo "Bonjour $firstName"