---
title: "Reboot du blog ?"
date: 2017-01-08 17:33
tags: [Drupal, SSG, Développement]
image: /images/new-plan-static-site-first.jpg
published: true
typora-root-url: ../../static
---
Comme on dit chez moi :
> p'têt ben qu'oui, p'têt ben qu'non !

Ça faisait plusieurs mois (années ?!) que je me posais la question de quoi faire de mon vieux blog ? Il n'a d'ailleurs de blog que le nom puisqu'en réalité, je n'ai jamais vraiment beaucoup écrit dessus : Il m'a surtout servi de terrain d'expérimentation pour le développement Web.

Aussi, dans l'optique de péréniser son (peu de) contenu et de me simplifier la maintenance, je l'ai migré vers un site statique : contenu dans des fichiers textes et mise en forme minimaliste !

![](/images/new-plan-static-site-first.jpg)
<!-- excerpt -->
Maintenant, je n'ai plus à me tracasser de l'application des patchs de sécurité de [Drupal](/tags/drupal), ni du risque de perdre ou de corrompre la BDD MySQL.
J'ai beaucoup aimé "jouer" avec [Drupal](/tags/drupal), mais il faut admettre qu'utiliser cette solution pour un petit blog, à peine dynamique, c'est d'avantage une contrainte qu'un outil.

**_Narno.com_ est propulsé par :**
* [GitHub](https://github.com/Narno/narno.com) : stockage, versionning des fichiers et hébergement
* [Cecil](https://cecil.app) : génère le site Web, en combinant les fichiers texte (écrit en [Markdown](https://daringfireball.net/projects/markdown/)) et les templates ([Twig](http://twig.sensiolabs.org/))
* [Travis CI](https://travis-ci.org/Narno/narno.com) : automatise la génération et le déploiement
* [Prose](http://prose.io/) : éditeur en ligne, orienté Markdown, avec prise en charge du frontmatter

Bref, je ne me préoccupe plus de l'hébergement, tout en gardant la main sur mon contenu, avec un minimum d'effort ! \o/

**Notes :**
1. L'ancienne version, motorisée par Drupal, reste disponible à l'adresse suivante : <http://drupal.narno.com>
2. Les billets traitant de [Magento](/tags/magento/) ont été déplacés vers mon [blog "pro"](http://arnaudligny.fr/blog/ "Le blog de Arnaud Ligny").
