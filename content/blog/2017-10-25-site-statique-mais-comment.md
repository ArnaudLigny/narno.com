---
title: 'Narno.com est un site Web statique : mais comment ?'
date: '2017-10-25'
tags:
  - statique
published: false
star: false
---

Dans mon billet intitulé [*Reboot du blog*](/blog/reboot-du-blog) j'indiquais que *Narno.com* était maintenant un site statique : mais en pratique, comment ça marche ?

## Qu'appelle-t-on un "site statique" ?

Un site Web peut-être qualifié de "site statique" quand il répond aux caractéristiques suivantes :

1. il est généré à la demande lorsque le contenu (pages, billets de blog) ou le contenant (templates, feuilles de styles) est modifié.
2. le site généré peut-être servi par un serveur Web, sans besoin d'interpréter un language de programmation côté serveur, ni de consommer une base de données.

Ainsi, pour *Narno.com* j'ai utilisé [PHPoole](https://phpoole.org) (la solution que je code avec mes p'tites mains depuis quelques années, en fonction de mes besoins) pour générer le site.

## Comment ça marche ?

### Le principe

Le principe est simple : J'ai utiisé un thème clef en main (à savoir l'excellent [Lanyon](http://lanyon.poole.org) créé par [XXX]()), dans lequel j'ai ajouté quelques varaibles afin de le personnaliser, j'ai converti les billets en fichiers [Markdown](), et enfin, j'ai fusionné le tout pour en faire un nouveau blog, consultable depuis un navigateur ! :smile:

### La pratique

to do
