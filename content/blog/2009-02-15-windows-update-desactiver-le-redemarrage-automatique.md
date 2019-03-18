---
title: "Windows Update : Désactiver le redémarrage automatique"
date: 2009-02-15
tags: Windows
image: /images/strategie-groupe-windows-update.png
path: blog/windows-update-desactiver-le-redemarrage-automatique
published: true
typora-root-url: ../../static
---
Windows Update permet la mise à jour de Windows et de ses applications de manière automatique. Ce système est indispensable afin d'assurer la sécurité et la stabilité de l'OS.

Une fois la mise à jour installée, Windows demande à l'utilisateur s'il doit / peut redémarrer l'ordinateur maintenant. Dans le principe c'est logique de faire la demande à l'utilisateur, ce qui l'est moins c'est que lorsque l'on clique sur "Redémarrer plus tard", Windows va vous balancer cette fenêtre à la figure jusqu'à ce que vous ayez redémarré... [ça devient vite pénible](http://narno.com/blog/windows-update-je-te-hais) !

Alors voici une astuce simple pour palier à cet inconvénient.
<!-- excerpt -->
Pour cela il suffit de modifier un des paramètres du panel de [Stratégie de groupe de Windows](http://www.google.fr/search?q=windows+%22strat%C3%A9gie+de+groupe%22) :

1. Démarrer > Exécuter
2. Saisir ***gpedit.msc***, valider
3. Ouvrir Configuration ordinateur > Modèles d'administration > Composants Windows > Windows Update
4. Double-cliquer sur "Pas de redémarrage automatique..."
5. Choisir l'option ***Activé***, valider

![](/images/strategie-groupe-windows-update.png)

Et voilà, maintenant vous avez le choix ! :-)
