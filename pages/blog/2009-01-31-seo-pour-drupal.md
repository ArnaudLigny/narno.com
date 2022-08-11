---
title: "SEO pour Drupal"
date: 2009-01-31
tags:
  - Développement
  - Drupal
  - SEO
path: blog/seo-pour-drupal
---
Sortie de boite, [Drupal](/tags/drupal) est construit de manière à assurer un bon référencement naturel. Il est néanmoins nécessaire d'utiliser un template bien structuré (via des zones de crawl ordonnées), d'appliquer quelques configurations spécifiques et autres modules adaptés.

Je vais présenter ici quelques optimisations à déployer sur votre site web motorisé par [Drupal](/tags/drupal) :

1. Activation des URL simplifiées
2. Réécriture automatique des URL
3. Génération du sitemap XML
4. Ajout de métadonnées
5. Éviter le contenu dupliqué (*duplicate content*)

<!-- excerpt -->

## 1. Activation des URL simplifiées

Il s'agit d'une option native de Drupal, basée sur la réécriture d'URL. Cette fonctionnalité permet de transformer les URL contenant des paramètres de type *GET* en une URL unique.  
Par exemple `/?q=node/1` sera remplacée par `/node/1`.

> Note : votre hébergement doit supporter l'*URL rewriting* ([*mod_rewrite* d'Apache](http://httpd.apache.org/docs/2.0/mod/mod_rewrite.html))

## 2. Réécriture automatique des URL

Quand les URL simplifiées sont active, il est possible de déterminer manuellement le chemin d'URL de chacun de ses nœuds, afin d'utiliser un nom compréhensible lorsque l'on créé un nouveau contenu.  
Par exemple `/node/1` devient `/mon-article-interessant`.

Néanmoins, il n'est pas très pratique de devoir systématiquement saisir ce nom manuellement.

Pour remédier à cela, on pourra utiliser le module [Pathautho](http://drupal.org/project/pathauto). Ce module est très complet et permet d'automatiser la création des chemins d'URL selon des règles simples. Il existe même un fichier permettant de définir la correspondance des caractères spéciaux (tels que les caractères accentués en français).

> Note : si vous appliquez ce module sur un site existant, prenez garde à ne pas renommer des pages existantes et déjà référencées par les moteurs de recherche.

## 3. Génération du sitemap XML

Maintenant que nous avons des URL "propres", il serait judicieux d'en informer les moteurs de recherche via un [sitemap XML](https://www.google.com/webmasters/tools/docs/fr/protocol.html) bien construit.

L'intérêt du sitemap XML est de permettre aux moteurs de recherche d'avoir une liste exhaustive des contenus de votre site, via une liste d'URL et d'en connaître les changements. Ainsi chaque URL sera associée à une date de modification.
L'objectif est de rendre les moteurs de recherche plus réactifs sur le référencement de vos pages.

Voici donc le module que j'ai retenu : [XML Sitemap](http://drupal.org/project/gsitemap).

## 4. Ajout de métadonnées

Même si l'on considère aujourd'hui que les mots clefs sont négligés par les moteurs de recherche, il n'en reste pas moins que la description est importante : c'est elle qui sera visible sur les pages de résultats de Google, entre le titre de la page et l'URL.

Encore une fois, pour simplifier la génération des méta tags, je conseille l'utilisation du module [Meta tags](http://drupal.org/project/nodewords).
Ce dernier permet d'insérer automatiquement le "teaser", du contenu de votre page, dans la balise de description de la page (entre autre).

## 5. Éviter le contenu dupliqué (*duplicate content*)

Un dernier point important : ne risquez pas de vous faire bannir de Google à cause de contenus dupliqués ! En effet, Google considère cela comme une pratique douteuse de référencement.  
Je m'explique : une page de contenu ne doit être accessible que par une seule et unique URL.

**Mise à jour :**

La problématique du *duplicate content* n'est pas le risque (inexistant sur un domaine unique) de se faire bannir de Google, mais plutôt de faciliter le travail des robots d'indexation de Google. En effet, les duplicatas de page de votre site seront également crawlés par les robots, même si le contenu est strictement identique à la page dupliquée. De ce fait, les robots de Google dépensent de l'énergie inutilement.  
Il n'y aurait pas de problème si le temps que peuvent passé par les robots sur votre site était illimité. Ce n'est pas le cas : tout le temps passé à scanner et à indexer des pages inutiles c'est, mécaniquement, du temps en moins pour d’autres pages et par conséquence une moins bonne indexation de votre site.

Si vous avez déployé le module Pathauto et que vous l'avez appliqué sur l'ensemble de votre site, plus aucun de vos contenus référençable ne devrait être accessible via l'URL `/node/xxxx`. Et pourtant, par défaut c'est le cas avec Drupal.  
Pour remédier à cela, il est conseillé de modifier le fichier `robots.txt` afin d'y ajouter une règle d'exclusion adéquate : `Disallow: /node/`.

De même pour l'accès à une page de contenu via votre nom de domaine, il est important que l'URL soit unique. Ce qui arrive très souvent, c'est que l'on puisse accédé à une même page avec ou sans les "www". Par exemple : `http://www.narno.com/mon-article` et `http://narno.com/mon-article`. Google interprète cela comme une duplication de contenu.

La solution est de dé-commenter l'un des 2 blocs suivant dans le fichier *.htaccess* (situé à la racine de votre site) :

```apache
#RewriteCond %{HTTP_HOST} ^example\.com$ [NC]
#RewriteRule .* http://www.example.com/ [L,R=301]
#
#RewriteCond %{HTTP_HOST} ^www\.example\.com$ [NC]
#RewriteRule .* http://example.com/ [L,R=301] 
```

Si vous dé-commentez le 1er, l'URL sera toujours `http://www.example.com`, si vous dé-commentez le 2nd, l'URL sera toujours `http://example.com`.

De plus Drupal adopte le même comportement que votre URL contienne un "/" final ou pas : il affiche le contenu tel quel.  
On se retrouve à nouveau dans un cas de contenu dupliqué, puisque 2 URL différentes permettent d’accéder à la même page.

La solution est d'ajouter la règle suivante dans le fichier *.htaccess* juste après la ligne `RewriteBase` :

```apache
RewriteCond %{HTTP_HOST} ^(www.)?narno\.com$ [NC]
RewriteRule ^(.+)/$ http://%{HTTP_HOST}/$1 [R=301,L]
```
