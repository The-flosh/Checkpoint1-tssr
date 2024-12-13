### 1.1 Préparation du disque
---
j'ai deja crée le deux partition de sdb (sdb1, sdb2) avec la commande:
>cfdisk /dev/sdb  
![cfdisk](https://github.com/The-flosh/Checkpoint1-tssr/blob/main/ressources/cfdisk.PNG)

j'ai ensuite fait en sorte que sdb1 qui est de 6g soit formater en ext4 avec la commande:
> mkfs.ext4 -L DATA /dev/sdb1

par la suite j'ai fait sorte que sdb2 soit partitionée en swap:  
> fdisk /dev/sdb  
n   (nouvelle partion (meme si elle etait deja crée)  
p   (primaire)  
2   (numéro de la partition)  
default  
defalut  
t (change le type de partition)  
2 (pour selectionner la partition a modifier)  
82 (code hexadecimal pour linux swap)  
![swap](https://github.com/The-flosh/Checkpoint1-tssr/blob/main/ressources/swap.PNG)

j'ai par la suite formater la partition avec ces deux commandes :
>mkswap /dev/sdb2  
sweapon /dev/sdb2

### 1.2 Montage
dans un permier temps pour la partition DATA je l'ai montée sur /mnt/data (dossier que j'ai crée par la meme occasion) avec la commande :
>mount -t ext4 /dev/sdb1 /mnt/data

ce qui nous donne ceci avec la commande "lsblk"
![lsblk](https://github.com/The-flosh/Checkpoint1-tssr/blob/main/ressources/montage.PNG)

puis j'ai nano le /etc/fstab pour pouvoir monter le sdb1(ext4) et le sdb2(swap) au démarage :
![fstab](https://github.com/The-flosh/Checkpoint1-tssr/blob/main/ressources/monatge%20au%20demarage.PNG)
