#!/bin/bash

if [ $# -eq 0 ]
then
        #informe que aucun argument n'a ete donée et arrete le script
        echo "Il manque les noms d'utilisateurs en argument - fin du script"
        exit 0
else
        #pour chaque argumnt donée execute une verification
        for utilisateur in "$@"
        do
                #verifie si la commande réussi
                if id "$utilisateur" &>/dev/null
                then
                        #si elle réussi elle renvoie que l'utilisateur exite deja
                        echo "L'utilisateur $utilisateur existe deja"
                else 
                        #sinon elle le crée
                        useradd -m -s /bin/bash "$utilisateur"
                fi
                #verifie la valeur de retour de useradd
                if [ $? -eq 0 ]
                then
                        echo "L'utilisateur $utilisateur a ete crée"
                else
                        echo "erreur de la créeation de l'utilisateur $utilisateur"
                fi
        done
fi
