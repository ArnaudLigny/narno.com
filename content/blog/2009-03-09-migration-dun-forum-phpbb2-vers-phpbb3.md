---
title: "Migration d'un forum phpBB2 vers phpBB3"
date: 2009-03-09
tags: PHP
permalink: blog/migration-dun-forum-phpbb2-vers-phpbb3
---
Ça aura été pénible mais j'ai réussi à migrer le [forum phpBB de Kobuta.fr](http://www.kobuta.fr/forum) !

## Petite introduction

Pour rappel, phpBB est certainement la solution de forum PHP la plus connu et la plus populaire, sans doute parceque la première arrivée avec PHP, son installation et sa prise sont simple, et enfin, compatible avec les hébergements lowcost (free.fr & co).

phpBB version 2 est (ou plutôt à été !) la branche de référence (pour ma part je n'ai même plus souvenir de la version 1...) et la plus utilisée sur le net (encore aujourd'hui, malgré la sortie de la version 3). Elle à finalement été décriée il y a maintenant quelques année par les communauté, principalement à cause de ses problèmes de sécurité à répétition : de nombreux forum se faisaient hackés par des [scripts kiddies](http://fr.wikipedia.org/wiki/Script_kiddies) et nombreux étaient ceux (dont moi à l'époque) qui cherchaient une solution alternative (mais la migration était souvent pénible...).
Malgré la réactivité du groupe phpBB pour produire des patchs, les attaques ont continuées, pourquoi ? Simplement parceque la structure même de phpBB n'était pas prévu pour évoluer ! Les mods s'installent de manière intrusive (dans le style osCommerce, à coup de copier/coller dans le core...), pas de controle de version dans le backend admin, etc.).

Depuis, la version phpBB 3 est sorti (fin 2007, soit environ 2 ans après les premières annonces) et c'est tant mieux ! En même temps c'était ça ou la mort de phpBB !

Pour en revenir au sujet initial, Kobuta.fr avait fermer son forum dès que le contrôle en a été perdu : inscription et posts de robots spammeurs, hacking et donc risque pour l'hébergeur.
Depuis, j'ai repris l'hébergement de Kobuta.fr et des sites associés (tel que le [blog de Oni](http://www.kobuta.fr/blog/)). Oni souhaitait que nous réinstallions l'ancien forum phpBB 2 en lecture seule afin de permettre aux membres d'accéder au contenu de certains billets et à leurs messages privés.
<!-- excerpt -->
## Les problèmes techniques commencent ici

Je ne vous cache pas que j'en ai chi*er ! Et comme toujours, à cause de la même problématique dans le cas d'une migration d'un ancien système vers un plus récent : l'encodage des caractères !
En effet, la plupart des anciennes plateformes à la phpBB étaient déployées "à l'européenne", c'est à dire :

1. un frontend en ISO-8859-1
2. une BDD en latin1_swedish_ci

De ce fait, quand on passe une plateforme full UTF-8 telle que la dernière mouture de phpBB, on se reprend en pleine face les bidouilles d'encodage de l'époque, misère...

Voici, en quelques lignes, ce qu'il faut faire pour migrer un phpBB 2 ISO/latin vers un phpBB 3 UTF-8/utf8_bin.

### Si vous n'utilisez pas la dernière version de phpBB 2 :

Il va donc falloir commencer à mettre à jour votre installation vers la version 2.0.23.

1. [téléchargez](http://sourceforge.net/project/showfiles.php?group_id=7885&package_id=28882) le package "files" de la  dernière release de la branche 2 (2.0.23). Si vous avez une installation antérieure à la 2.0.12, allez mourir !
2. rapatriez en local (on travail toujours en local avant de tout casser !) votre forum
3. mettez à jour votre BDD via le script "install/update_to_latest.php"
4. remplacez vos fichiers par ceux présent dans l'archive correspondant à votre mise à jour de version (si vous avez installer des mods dans tout les sens, je ne peux pas vous aider, le [forum phpBB FR](http://forums.phpbb-fr.com/) est là pour ça)
 
### Vous utilisez déjà la dernière version de phpBB 2 :

#### phpBB 2 :
1. modifier l'encodage de votre BDD actuelle pour utf8_bin (tables comprise)
2. modifier la valeur de la variable

```php
$lang['ENCODING'] = 'ISO-8859-1'
```

pour

```php
$lang['ENCODING'] = 'UTF-8'
```

(voir le fichier "language/lang_french/lang_main.php")

#### phpBB 3 :
1. téléchargez la dernière version de phpBB 3 en version complète
2. décompressez les fichiers dans un autre répertoire que votre forum actuel : la migration se base sur la BDD, mais pas sur les fichiers : dites au revoir à votre thème custom !
3. démarrer l'installation d'une version vierge de phpBB 3, en prenant garde à utiliser la même BDD que celle utilisée par votre phpBB 2 : choisissez un autre préfixe de table afin de ne pas risquer d'en écraser une.
4. la dernière étape de l'installation vous propose d'utiliser votre forum fraichement installer : ne le faite pas et cliquez sur l'onglet "Convertor"
5. si vous avez suivi les étapes précédente, c'est du gâteau : soyez simplement vigilant afin de bien indiquer le paramétrage du forum source et du forum de destination
6. suivez les étapes une à une et appliquer les corrections nécessaire : les messages d'erreurs sont assez explicite

En cas de soucis, vous pourrez toujours recommencer, car l'outil de migration fourni pas phpBB n'écrase pas votre ancien forum : il alimente votre nouveau forum avec les données de l'ancien.

Bref, quand j'y pense, sans ces soucis d'encodage et les temps de chargement/traitement, ça aurait été plié en quelques minutes...

Le résultat ici : http://www.kobuta.fr/forum :-)
