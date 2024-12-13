# Exercice 3
---
### 1 Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux
>cat /etc/passwd
---
### 2 Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?
>chmod
---
### 3 Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?
> crée un fichier .gitignore dans le repertoire racine du projet puis le nano pour ecrire ce qu'ont veux excure lors du git push ici:  
*pdf
---
### 4 Quelles commandes git utiliser pour fusionner les branches main et test_valide ?
>git merge
---
### 5 Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant :
>echo -e "Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :\n- "Bonjour est-ce que ce clavier fonctionne bien ?"\n- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"\n- "Même des tildes ~ ?"\n- "Evidemment !"
---
### 6 La commande jobs -l donne le résultat ci-dessous :
>wilder@Ubuntu:~$ jobs -l
[1]  37970 En cours d'exécution   gedit &
[2]  37971 En cours d'exécution   xeyes &
[3]- 37972 En cours d'exécution   sleep
Quelle commande te permet de mettre en avant le processus gedit ?

>fg %1
man fg:  
https://ss64.com/bash/fg.html
---
### 7 Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.
>couche deux : laison de données(PDU: trame)  
Gère les méthodes d’accès au média, gère le contrôle d’erreurs  
couche trois : réseau(PDU: paquet)  
Assure le routage et l’interconnexion de réseaux hétérogènes.  
---
### 8 . Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.
>cd : Set-Location  
cp : Copy-Item  
mkdir : New-Item -path "c:\" -Name "test" -Itemtype "directory"  
ls : Get-Childitem  
---
### 9 Dans la trame ethernet, qu'est-ce que le payload ?
>c'erst la charge utile et elle disgne la trame.elle contient les info pour/du protocol qui envoie/recoit.
---
### 10 Pourquoi les classes IP sont remplacées par le CIDR ?
>pour que l'adressage soit plus facile, plus efficace et pour réduire le nombre d'ip gachée.il sert a faire des sous réseau de plusieurs tailles et s'adapte au besoin.
---
