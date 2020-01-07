---
title: " Thermalright SP-94 dans un Soltek Qbic EQ3401"
description: "Guide de montage du Thermalright SP-94 couplé au Noisebloker SE2 dans un Soltek Qbic EQ3401"
date: 2004-07-10
updated: 2004-07-28
image: soltek-eq3401-sp94-guide-montage/sp94_se2.jpeg
alias:
 - rubriques/divers/minigaia/soltek-eq3401-sp94-guide-montage/
 - rubriques/divers/minigaia/soltek_eq3401_guide1/
typora-root-url: ../static
---

> Guide de montage du Thermalright SP-94 couplé au Noisebloker SE2 dans un Soltek Qbic EQ3401

Ce guide de montage est né à la suite d'un sujet posté par moi-même sur le forum de [Barbones.com](https://web.archive.org/web/20061209111005/http://www.barbones.com/). Mon but était alors de chercher puis de proposer mes solutions afin de tenter d'obtenir le meilleur rapport silence/refroidissement pour un [Soltek](https://web.archive.org/web/20061209111005/http://www.soltek-computer.de/) Qbic EQ3401 (équipé d'un socket 478). Après diverses recherche sur l'Internet, il m'est apparu que la solution la plus intéressante en Air Cooling (par opposition au Water Cooling, particulièrement silencieux et d'une éfficacité redoutable mais entrennant de trop importantes modifications au sein d'un Qbic et de plus très couteux...) était de coupler un radiateur de la marque [Thermalright](https://web.archive.org/web/20061209111005/http://www.thermalright.com/), un SP-94 (radiateur pour socket 478), et un [Noiseblcoker](https://web.archive.org/web/20061209111005/http://www.noiseblocker.de/) SE2 (ventilateur de 92 mm).

Le Thermalright à été testé par de nombreux sites de hardware (de matériel informatique) et tous s'accordent à dire qu'il est très efficace pour refroidir n'importe quel processeur, même overcloacké, pour peu qu'on est le courage de démonter la carte mère de son Qbic EQ3401...
D'autre part, si le SP-94 assure la dissipation de la chaleur avec son bloque d'ailettes tout cuivre et ses trois heatpipes, c'est le SE2 de Noiseblocker qui se chargera de ventiller le tout en silence.

Et pour terminer, il s'avère que ce ventirad plutôt massif à première vu, rentre très bien dans un QBic EQ3401, même s'il est particulièrement proche du port PCI et des lecteurs de façades... tout en étant très bien placé juste en dessous du ventilateur de l'alimentation.

<!-- break -->
## Sommaire {#sommaire}

- [**Partie 1 :**](#partie1) contenu du carton et matériel nécessaire
- [**Partie 2 :**](#partie2) dépouillage de la caisse et extraction de la carte mère
- [**Partie 3 :**](#partie3) démontage du ventirad *box,* nettoyage et préparation du processeur
- [**Partie 4 :**](#partie4) mise en place du SP-94, du SE2 et fixation de l'ensemble
- **Partie 5 :** remontage de la carte mère et des éléments : ça passe encore ?
- **Conclusion**

## Partie 1 : contenu du carton et matériel nécessaire {#partie1}

**Ce dont nous disposons :**

![SE2](/soltek-eq3401-sp94-guide-montage/se2.jpeg)
![SP-94](/soltek-eq3401-sp94-guide-montage/sp94.jpeg)
![Contenu du carton du SP-94](/soltek-eq3401-sp94-guide-montage/carton_sp94.jpeg)

Commençons par le commencement et voyons ce que le carton d'un Thermalright SP-94 contient :

- une notice de montage (en anglais et plutôt succinte...)
- le SP-94 enveloppé dans un plastique. De plus sa surface de contact avec le processeur est protégé par un film transparent autocolant.
- la fixation en étoile (en *X*) qui viens se placer à l'arrière de la carte mère (d'où la nécessité de la démonter)
- un petit sac contenant les vis de fixations et les divers entretoises
- un tube de pâte thermique valable pour un utilisation mais à priori largement suffisant (je ne l'ai pas utilisé, préférant de la pathe thermique *Artic Silver V*)
- deux jeux de fixations pour ventilateur : 60, 80 et 92 mm (nous utiliserons les plus grand)

Le contenu du carton n'est pas déconcertant, mis à par peut-être les divers entretoises qui posent questions dans un premier temps mais qui sont facile à placer pour peu que l'on soit logique.

En ce qui concerne le SE2, rien de particulier : c'est tout simplement un ventilateur de 92mm bleu/transparent relié à un connecteur 3 pins de 12 volts. Bref, pas de quoi avoir peur ! :-p

**Ce dont nous aurons besoin :**

Maintenant que nous savons de quoi nous disposons, voyons maintenant le matériel qui nous sera nécessaire à la mise en place de ces équipements.

Etant donné que nous allons ouvrir la caisse et démonter quelques éléments, je vous conseil d'en profité pour enlever la poussière de votre machine. C'est pour cela que je vais ajouter une bombe d'air à la liste des outils nécessaire.

![Vrille](/soltek-eq3401-sp94-guide-montage/tir.jpeg)
![Pince à bec](/soltek-eq3401-sp94-guide-montage/pince.jpeg)
![Couteau](/soltek-eq3401-sp94-guide-montage/couteau.jpeg)
![Tournevis cruciforme](/soltek-eq3401-sp94-guide-montage/cruciforme.jpeg)
![Bombe d'air](/soltek-eq3401-sp94-guide-montage/bombe_air.jpeg)

- une bombe d'air : très efficace pour dépoussièrer un ordinateur
- un tournevis cruciforme de taille moyenne
- un couteau
- une pince à bec
- une vrille (merci à *Wouhou* de [Barbones.com](https://web.archive.org/web/20061209111005/http://www.barbones.com/) pour le nom exact !)

Comme vous le voyez, il n'est pas nécessaire d'être sur équipé.

[*Sommaire*](#sommaire)

## Partie 2 : dépouillage de la caisse et extraction de la carte mère {#partie2}

Tout d'abord, le démontage du capot se fait sans difficulté étant donné que les vis qui le maintienne se dévissent à la main. En suite, si vous avez installé une carte graphique, il vous faudra un tournevis cruciforme pour enlever sa visse de fixation. Voilà, nous avons accès à la zone qui nous intéresse : le socket, le processeur et son ventirad... mais comme je l'ai indiqué plus haut, il va nous falloir démonter la carte mère afin de pouvoir fixer le SP-94.

Dans ce cas, il va nous falloir démonter plusieurs choses pour travailler avec un maximum d'espace. Rassurez-vous, il n'y a rien de compliqué. Veillez simplement à mémoriser le branchement des différents câbles débranchés et les types de vis associées au éléments démontés.
Pour faire de la place nous allons enlever l'arceau : enlevez les lecteurs optiques, dévisez les 2 fils situés sur le dessus et tirez le vers le haut en veillant de pas cogner le/les disques dur. Ensuite, démontez le boitier d'alimentation simplement en enlevant les trois vis qui le fixe à la caisse.
Et voilà, on a quand même plus de place d'un coup, non ?! Il ne nous reste plus qu'a extraire la carte mère de la caisse. Pour cela il nous suffit de débrancher tout les câbles qui la relie à la caisse : prises d'alimentation, prise de l'IceQ (gros ventilateur latéral), équipement de façade, etc. Maitenant dévisez les six vis qui la fixe au fond de la caisse et retirez la délicatement en veillant à ne pas forcer sur les divers prises situées à l'arrière.

![Qbic dépouillé](/soltek-eq3401-sp94-guide-montage/qbic_1.jpeg)

Ca y est, la carte mère est tout à vous ! Pour éviter les accidents, préférez enlever les barettes de mémoire.

![Carte mère](/soltek-eq3401-sp94-guide-montage/cm_1.jpeg)

------

[*Sommaire*](#sommaire)

## Partie 3 : démontage du ventirad \*box\* et nettoyage du processeur {#partie3}

**Démontage du ventirad :**

![Ventirad et carte mère](/soltek-eq3401-sp94-guide-montage/ventirad_cm.jpeg)

Passons maitenant la partie *critique* dans l'installation du SP-94 : le démontage du ventirad fournit avec le Pentium IV mais surtout le démontage de son support ! En effet, les cartes mère dotées d'un socket 478 (pour PIV) sont également équipées d'un support permettant la fixation des ventirads "classiques".
Dans notre cas celui-ci est devenu inutile car le SP-94 se fixe directement sur la carte mère : il va donc nous falloir trouver une solution pour nous en débarasser...

Commençons par observer la carte mère et la manière dont ce support coloré y est fixé. Comme vous pouvez le voir sur les deux photos ci-contre, le support plastique (sur les photos, le cadre violet autour du socket) est fixé en quatre endroit par des pièces de plastique blanche (mâle) et noir (femelle). Les pitons blanc exerce une pression par l'intérieur sur les petits tubes noir (qui sont "soudés" en leur extrèmité) afin de maintenir le tout à la carte mère.

![Carte mère de dos](/soltek-eq3401-sp94-guide-montage/cm_dos.jpeg)
![Carte mère](/soltek-eq3401-sp94-guide-montage/cm_2.jpeg)

------

Le but de l'opération va donc être de faire "sauter" ces "deux fois quatre" pièces de plastique.
Dans un premier temps j'avais pensé couper la partie "soudés" des pièce noir afin de pousser le tout (carte mère retournée bien sûr). J'ai donc coupé les petits "chapeaux" noir et j'ai ensuite poussé avec l'extrémité de mon tournevis cruciforme... mais il s'est avéré que la méthode n'était pas idéale. J'ai alors utilisé une pince à bec pour serrer la pièce de plastique afin de pousser le tout, mais là encore la méthode était peu efficace et dangereuse pour le matériel... en effet, de cette manière on force avec un objet plus ou moins pointu à proximité de la carte mère et un accident est vite arrivé ! Pour ma part, après avoir dérapé 2 fois (pourtant en prenant le maximum de précautions !), comme en témoigne la photo tout à droite, j'ai préféré arréter et trouver une méthode moins brutale.

![Fixation carte mère 3](/soltek-eq3401-sp94-guide-montage/fixation_cm_3.jpeg)
![Fixation carte mère 2](/soltek-eq3401-sp94-guide-montage/fixation_cm_2.jpeg)
![Fixation carte mère 1](/soltek-eq3401-sp94-guide-montage/fixation_cm_1.jpeg)

Suite à ce constat de "demi échec" j'ai cherché une solution plus "pacifique"... Il va nous falloir essayé de faire les choses en deux temps : pousser les pitons blancs sans toucher aux tubes noirs qui eux, seront retiré dans un deuxième temps.

On peut alors reprendre le cruciforme mais non pas par le manche, mais plutôt par l'extrémité : on aura moins de force mais ce n'est pas l'important, il nous faut être précis et patient. Nous devons pousser, par petites passes successives, le pitons blancs jusqu'à ce que ceuxi-ci puissent être tiré du bout des doigts de l'autre côté de la carte mère.

![Fixation carte mère 6](/soltek-eq3401-sp94-guide-montage/fixation_cm_6.jpeg)
![Fixation carte mère 5](/soltek-eq3401-sp94-guide-montage/fixation_cm_5.jpeg)
![Fixation carte mère 4](/soltek-eq3401-sp94-guide-montage/fixation_cm_4.jpeg)

------

Les quatres pitons en plastique blanc ont été tranquillement poussés d'un côté à l'autre, il nous reste encore les tubes noir, pièces récalcitrantes s'il en est... en effet, pour les mêmes raisons que citées plus haut, mieux vaut évité de pincer et de pousser au dos de la carte mère avec la pince à bec, on risquerai de faire des bêtises ! C'est alors que la vrille entre en scène ! :-p En effet, si on ne peut pas pousser les pitons de plastique sans risque, nous allons... les tirer ! Pour cela, il faut que nous puissions avoir prise sur eux et que ça supporte une traction. D'où le système de tir bouchon.
Maintenant que cette nouvelle méthode à été pensée, essayons de la mettre en pratique : l'outil doit légèrement entré dans le trou du tube noir, côté supérieur de la carte mère (voir photos) tout en s'enfonçant dans le plastique quand on visse. La difficulté est de trouver le meilleur compromis entre une bonne prise et un écartement minimum du tube de plastique, on tire légèrement mais franchement et là... fantastique ! Ca vient très facilement et proprement, un vrai bonheur ! :-)

![Fixation carte mère 9](/soltek-eq3401-sp94-guide-montage/fixation_cm_9.jpeg)
![Fixation carte mère 8](/soltek-eq3401-sp94-guide-montage/fixation_cm_8.jpeg)
![Fixation carte mère 7](/soltek-eq3401-sp94-guide-montage/fixation_cm_7.jpeg)

------

Comme quoi, une fois la méthode trouvée, ce n'est pas si difficile ;-) Voilà, ça y est votre carte mère est débarassée du support de ventirad et laisse apparaitre 4 trous qui seront nécessaire à la fixation du Thermalright SP-94 (fixation par vis).

![Fixation carte mère 11](/soltek-eq3401-sp94-guide-montage/fixation_cm_11.jpeg)
![Fixation carte mère 10](/soltek-eq3401-sp94-guide-montage/fixation_cm_10.jpeg)

*Note : sur la dernière photo (celle de droite), les quelques marques que vous pouvez voir près du trou en bas à droite ont été causées par la première "mauvaise" méthode.*

------

**Nettoyage du processeur :**

Nous avons séparé le ventirad de la carte mère, tâchons maintenant de nous occupé du processeur... toujours collé au ventirad ! Et oui, dans mon cas, lorsque j'ai monté mon QBic je n'avais pas fait les frais d'un tube de pâte thermique. Le conducteur thermique d'origine est donc resté et il est particulièrement collant !

![Processeur 2](/soltek-eq3401-sp94-guide-montage/proc_2.jpeg)
![Processeur 1](/soltek-eq3401-sp94-guide-montage/proc_1.jpeg)

Il faut savoir que les Pentium IV sont particulièrement petit et n'ont pas une prise facile, il faut donc trouvé un outil pour le décoller mais sans l'âbimer. Je vous déconseil d'utiliser un outil métallique comme un tournevis plat, vous risqueriez de le marquer. En ce qui me concerne j'ai opté pour une simple carte de plastique au format Carte Bleu (oui je sais, c'est ma carte d'assuré... peut-être une manière de ma rassurer ? :-p). Ne vous inquiétez pas, c'est opération se passe sans difficulté avec cette méthode : il suffit de faire pivot tout autour du processeur en prenant appui sur le ventirad et de finir par un petit coup sec sur un des côtés.

Ca y est, le processeur est décollé du ventirad mais il reste encore de la pâte thermique à sa surface : remédions à ça avant de le réinstaller.

![Processeur 4](/soltek-eq3401-sp94-guide-montage/proc_4.jpeg)
![Processeur 3](/soltek-eq3401-sp94-guide-montage/proc_3.jpeg)

Dans un premier temps, son nettoyage ne semble pas aisé, on cherche des produits mais on hésite à appliquer un solution trop aggrésive sur la surface d'un PIV. Finallement, les solutions les plus simple sont les meilleurs : prenez une feuille de papier essui tout et pliez là, puis vous la glissez sous votre index tout en la maintenant autour de celui-ci avec votre pouce et votre majeur. Comme indiqué plus haut, le PIV n'a pas une prise en main facile, alors comment frotter sa surface facillement ? Ne vous compliquez pas la vie, replacez le temporairement sur son socket, vérouillez le, et commencé à le frotter légèrement avec votre essui tout. Vous n'avez pas besoin de forcer; faites plusieurs passages en changeant régulièrement la feuille. Quand vous êtes satisfait du resultat, reprenez le processeur en main, nous allons passé à la préparation de ce dernier et de la carte mère.

**Préparation du processeur :**

Nous allons maintenant passé à la dernière étape avant l'installation à proprement parlé du SP-94 : l'application de la pâte thermique.

*Important : notez que cette étape est batarde au niveau chronologique dans le sens ou vous devez en prendre note mais que l'application de la pâte thermique doit se faire après la mise en place du support pour le SP-94 (pièce noir en X) : évitez de laissé sécher la pâte thermique.*

La préparation du processeur consiste en l'application d'une pâte thermique. Celle-ci à pour but de d'optimiser l'échange thermique entre la survace du propocesseur et le radiateur qui lui va dissiper la chaleur produite. Elle doit donc être appliquée avec soin : sur toute la surface du processeur et en une fine couche homogène. Evitez la surépaisseur : cette pâte ne doit pas se transformée en isolant !

![Processeur 5](/soltek-eq3401-sp94-guide-montage/proc_5.jpeg)
![Artic Silver V](/soltek-eq3401-sp94-guide-montage/artic_silver_5.jpeg)

*Note : la photo n'a pas un rendu terrible, ce n'est pas une version finale... ça fait un peu maçonnerie ! Appuyez-vous d'avantage sur les explications ci-dessus ;-)*

[*Sommaire*](#sommaire)

## Partie 4 : mise en place du SP-94, du SE2 et fixation de l’ensemble {#partie4}

Cette étape peut vous semblez intimidente, mais si vous avez suivit les précédentes, les choses vont être plutôt simple... en procédant toujours par étapes bien entendu ! ;-)

Comme je l'ai indiqué dans la [*Partie 1*](#partie1), le SP-94 est livré avec une plaque de fixation en forme de *X*. C'est grâce à elle que le SP-94 sera solidaire de la carte mère et c'est pour elle que nous avons démonter le support de ventirad. En effet, celle-ci est fixée par les mêmes quatres trous de fixation. Pour fixer le tout, un sachet de divers vis et autres entretoises est fournit (voir photo ci-contre).

![La visserie](/soltek-eq3401-sp94-guide-montage/visserie.jpeg)
![Pièce en X](/soltek-eq3401-sp94-guide-montage/piece_x.jpeg)

Note :

- Il y a cinq pièce de chaque alors que quatre sont suffisante. Ca peut éviter les soucis si jamais une des pièces de fixation est déffectueuse.
- Vous avez sans doute remarqué qu'une des faces de la plaque de fixation est recouverte d'un tampon de caoutchouc : celui-ci viens en appui sur la carte mère pour ne pas la déformer lors du vissage.

### Étapes

1. Pour commencé, dégagez-vous une zone de travail. Placer ensuite la plaque de fixation à plat et au centre de votre zone de travail, avec le coté du tampon au dessus. Saisissez vous de quatre rondelles plastique, les plus large, et placez les sur les qautre pas de vis de la plaque. Vous pouvez maintenant déposer votre carte mère (face au dessus également) sur la plaque en coordonant les quatres trous de chacun : si vous êtes éclairé par une source de lumière suffisante, ça ne devrait pas être difficile.
![Fixation SP-94 1](/soltek-eq3401-sp94-guide-montage/fixation_sp94_1.jpeg)

2. Nous pouvons maitenant mettre ne place les entretoise à vis. Celles-ci, d'une hauteur certaine, servent de "cale" entre la carte mère et le bloque de cuivre qu'est le SP-94. En effet, il faut cmpenser à différence de niveau du au socket et au processeur. Saississez-vous de quatre de ces pièces et de quatres rondelles plastique (le plus étroites). Enfilez les rondelles de plastique (voir photo) et visser le tout sur la plaque de fixation au travers de la carte mère.
![Fixation SP-94 3](/soltek-eq3401-sp94-guide-montage/fixation_sp94_3.jpeg)
![Fixation SP-94 2](/soltek-eq3401-sp94-guide-montage/fixation_sp94_2.jpeg)

3. Le plus gros du montage est maintenant fait. Il nous faut remettre le processeur en place, après l’avoir préparé bien sûr. Ensuite enlever le film plastique qui protège le SP-94 et placer ce dernier délicatement sur les quatres supports métalique que nous venons de visser. Placer enfin qautres des dernières rondelles (les métalliques) et fixer le SP-94 à l'aide de quatres vis équipées de ressort. Les ressorts entretiendront une pression constante entre les vis et le bloque de cuivre. Serez donc les vis de manière à mettre ces ressorts sous pession sans non plus forcer sur le matériel !
![Fixation SP-94 9](/soltek-eq3401-sp94-guide-montage/fixation_sp94_9.jpeg)
![Fixation SP-94 8](/soltek-eq3401-sp94-guide-montage/fixation_sp94_8.jpeg)
![Fixation SP-94 7](/soltek-eq3401-sp94-guide-montage/fixation_sp94_7.jpeg)
![Fixation SP-94 6](/soltek-eq3401-sp94-guide-montage/fixation_sp94_6.jpeg)
![Fixation SP-94 5](/soltek-eq3401-sp94-guide-montage/fixation_sp94_5.jpeg)
![Fixation SP-94 4](/soltek-eq3401-sp94-guide-montage/fixation_sp94_4.jpeg)

----

Note :

- N'oubliez surtout pas d'enlever le film plastique de proctection sur le SP-94, les conséquences pourait être désatreuse pour votre processeur !
- Pensez à mettre en place les arceaux de fixation pour le ventilateur avant de visser le SP-94. Sinon vous aurez beaucoup de mal à les glisser dans les trous prévu dans les parois...
- La photo n'a pas un rendu terrible, ce n'est pas une version finale... ça fait un peu maçonnerie ! Appuyez-vous d'avantage sur les explications ci-dessus ;-)

[*Sommaire*](#sommaire)

(bientôt la suite ! En attendant, voici quelques [photos](soltek-eq3401-sp94-guide-montage-photos.md) !)

------

La [version originale](https://web.archive.org/web/20061209111005/http://www.narno.com/rubriques/divers/minigaia/soltek-eq3401-sp94-guide-montage/) de ce guide à été créée par [Narno](https://narno.com) le 10 juillet 2004.