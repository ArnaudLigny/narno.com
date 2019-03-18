---
title: "Narno.com est un site Web statique : mais comment ?"
date: 2017-10-25
tags:
  - Site statique
  - Dev Web
published: false
typora-root-url: ../../static
---

Dans mon billet intitulé [*Reboot du blog*](/blog/reboot-du-blog) j'indiquais que *Narno.com* était maintenant un site statique : mais en pratique, comment ça marche ?
<!-- excerpt -->
## Qu'appelle-t-on un "site statique" ?

Un site Web peut-être qualifié de "site statique" quand il répond aux caractéristiques suivantes :

1. il est généré à la demande lorsque le contenu (pages, billets de blog) ou le contenant (templates, feuilles de styles) est modifié.
2. le site généré peut-être servi par un serveur Web, sans besoin d'interpréter un language de programmation côté serveur, ni de consommer une base de données.

Ainsi, pour *Narno.com* j'ai utilisé [PHPoole](https://phpoole.org) (la solution que je code avec mes p'tites mains depuis quelques années, en fonction de mes besoins) pour générer le site.

## Comment ça marche ?

### Le principe

Il est très simple, j'ai :

1. utilisé un thème clef en main (à savoir l'excellent [Lanyon](https://github.com/poole/lanyon) créé par [Mark Otto](https://github.com/mdo))
2. j'y ai ajouté quelques variables afin de le personnaliser (nom, description, menu, etc.)
3. j'ai converti les anciens billets en fichiers [Markdown]()
4. j'ai fusionné le tout avec [PHPoole](https://phpoole.org) ! :smile:

### La pratique

Entrons maintenant dans le détail de la mise en oeuvre, les outils, les scripts, etc.

#### Le thème / les templates

