#!/usr/bin/env bash

secret=$((RANDOM % 100 + 1)) # Générer un nombre aléatoire entre 1 et 100
tentatives=0 # Compteur d'éssaies

echo "Devine le nombre (entre 1 et 100)" # Demande au joueur de proposer un nombre