---
title: "Narno.com est un site web statique"
date: 2017-10-25
updated: 2020-08-29
tags:
  - Développement
  - SSG
image: /images/ssg-flow.png
published: false
typora-root-url: ../../static
---

Dans mon billet intitulé [*Reboot du blog ?*](/blog/reboot-du-blog) j'indiquais que *Narno.com* était maintenant un site statique : mais « statique », ça veut dire quoi ?

![](/images/ssg-host-flow.png "SSG host flow")
*Source du schéma : [What is a Static Site Generator?](https://www.netlify.com/blog/2020/04/14/what-is-a-static-site-generator-and-3-ways-to-find-the-best-one/)*
<!-- break -->

## Qu'appelle-t-on un « site statique » ?

Un site web peut-être qualifié de statique quand il répond aux caractéristiques suivantes :

1. il est (re)généré à la demande lorsque le contenu (pages, billets de blog, etc.) ou la mise en forme (templates, feuilles de styles) est modifiée.
2. le site généré peut-être servi par un [serveur web](https://fr.m.wikipedia.org/wiki/Serveur_web) sans être interprété par un langage de programmation, ni être dépendant d’une base de données.

## Comment ça marche ?

### Le principe

Le principe est très simple : les contenus texte (au format [Markdown](https://fr.m.wikipedia.org/wiki/Markdown)) sont fusionnés avec la mise en forme (templates [Twig](https://twig.symfony.com/doc/templates.html) et [feuilles de style](https://fr.m.wikipedia.org/wiki/Feuilles_de_style_en_cascade)) pour créer un site web.

### En pratique

*Narno.com* s’appuie sur :

1. un thème clef en main (l'excellent [Lanyon](https://github.com/poole/lanyon) créé par [Mark Otto](https://github.com/mdo))
2. quelques variables de configuration (nom, description, menu, etc.)
3. les billets de blog (historiquement stockés dans la BDD Drupal) convertis en fichiers au format [Markdown](https://fr.m.wikipedia.org/wiki/Markdown)
4. mon générateur de site statique : [Cecil](https://cecil.app)

De plus, afin d’automatiser le processus, j’utilise un outil d’intégration continue ([LambCI](https://github.com/lambci/lambci)) qui déclenche la (re)génération dès que le contenu est modifié sur le [dépôt GitHub](https://github.com/Narno/narno.com) (ex : [Build #676](https://lambci-buildresults-1w0y4nab0105t.s3.amazonaws.com/gh/Narno/narno.com/builds/676/536b49b7fde5e134fb6b919d503601f6.html)).

Le site ainsi généré est ensuite déployé sur [GitHub Pages](https://github.com/Narno/narno.com/deployments/activity_log?environment=github-pages) et disponible via le domaine narno.com.

Simple, efficace, facile à maintenir et à maintenir ! 😊