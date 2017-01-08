---
date: '2017-01-08 17:33'
star: true
published: true
title: Reboot du blog ?
tags:
  - PHPoole
  - Drupal
---
Reboot du blog ?

Comme on dit chez moi :
> p'têt ben qu'oui, p'têt ben qu'non !

Ça faisait plusieurs mois (années ?!) que je me posais la question de quoi faire de mon vieux blog ? Il n'a d'ailleurs de blog que le nom puisqu'en réalité, je n'ai jamais vraiment beaucoup écrit dessus : Il m'a surtout servi de terrain d'expérimentation pour le développement Web.

Aussi, dans l'optique de péréniser son (peu de) contenu et de me simplifier la maintenance, je l'ai migré vers un site statique : contenu dans des fichiers textes et mise en forme minimaliste !

Maintenant, je n'ai plus à me tracasser de l'application des patchs de sécurité de Drupal, ni du risque de perdre ou de corrompre la BDD MySQL.
J'ai beaucoup aimé "jouer" avec Drupal, mais il faut admettre qu'utiliser cette solution pour un petit blog, à peine dynamique, c'est d'avantage une contrainte qu'un outil.

Bref, aujourd'hui, ce blog est propulsé par :
* [GitHub](https://github.com/Narno/narno.com) : stockage, versionning des fichiers et hébergement
* [PHPoole](http://phpoole.org/) : génère le site Web, en combinant fichiers texte (écrit en [Markdown](https://daringfireball.net/projects/markdown/)) et templates ([Twig](http://twig.sensiolabs.org/))
* [Travis CI](https://travis-ci.org/Narno/narno.com) : automatise la génération et le déploiement
* [prose](http://prose.io/) : éditeur en ligne, orienté Markdown, avec prise en charge du frontmatter

Bref, je ne me préoccupe plus de l'hébergement, tout en gardant la main sur mon contenu, avec un minimum d'effort ! \o/