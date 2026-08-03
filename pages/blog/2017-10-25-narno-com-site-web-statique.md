---
title: "Narno.com est un site web statique"
date: 2017-10-25
updated: 2026-08-03
tags:
  - Développement
  - SSG
image: images/ssg-flow.png
published: true
---
Dans mon billet [*Reboot du blog ?*](/blog/reboot-du-blog/) j'indiquais que *Narno.com* est maintenant un site statique : mais « statique », ça veut dire quoi ?

![SSG host flow](../../static/images/ssg-host-flow.png "SSG host flow ([What is a Static Site Generator?](https://www.netlify.com/blog/2020/04/14/what-is-a-static-site-generator-and-3-ways-to-find-the-best-one/))"){placeholder=color}
<!-- break -->

## Qu'appelle-t-on un « site statique » ?

Un site web peut-être qualifié de site statique quand il répond aux caractéristiques suivantes :

1. il est généré à la demande lorsque le contenu (pages, images, etc.) et/ou la mise en forme (templates, feuilles de styles) est modifié ;
2. le site généré peut-être servi par un [serveur web](https://fr.wikipedia.org/wiki/Serveur_web) sans nécessiter l’interpréteur de langage de programmation, ni dépendre d’une base de données.

## Comment ça marche ?

### Le principe

Le principe est très simple : les contenus texte (au format [Markdown](https://fr.m.wikipedia.org/wiki/Markdown)) sont fusionnés avec la mise en forme (templates [Twig](https://twig.symfony.com/doc/templates.html) et CSS) pour créer un site web HTML.

### En pratique

*Narno.com* s’appuie sur :

1. un thème clef en main (l'excellent [Lanyon](https://github.com/poole/lanyon) créé par Mark Otto)
2. quelques variables de configuration (nom, description, menu, etc.)
3. les billets de blog (historiquement stockés dans la BDD d’une instance Drupal) convertis en fichiers au format [Markdown](https://fr.wikipedia.org/wiki/Markdown)
4. [Cecil](https://cecil.app), un générateur de site statique

De plus, afin d’automatiser le processus j’utilise un outil d’intégration continue ([LambCI](https://github.com/lambci/lambci)), qui déclenche la génération dès que le contenu est modifié sur le [dépôt GitHub](https://github.com/ArnaudLigny/narno.com) (ex : [Build #676](https://lambci-buildresults-1w0y4nab0105t.s3.amazonaws.com/gh/Narno/narno.com/builds/676/536b49b7fde5e134fb6b919d503601f6.html)).

Le site ainsi généré est ensuite déployé sur [GitHub Pages](https://github.com/ArnaudLigny/narno.com/deployments/activity_log?environment=github-pages) et disponible depuis le domaine `narno.com`.

D’autre part, pour la gestion des contenus j‘utilise le logiciel [Typora](https://typora.io) pour de éditer les fichiers.

Simple, efficace, facile à maintenir et à migrer ! 😊
