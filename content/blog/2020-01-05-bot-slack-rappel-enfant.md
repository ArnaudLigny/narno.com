---
title: "Un bot pour ne plus arriver en retard à l'école !"
date: 2020-01-05
updated: 2020-08-28
tags:
- Papa
- Développement
image: "/images/chatbot.jpg"
published: false
typora-root-url: ../../static
---
> Suite au confinement lié au [Covid-19](https://fr.m.wikipedia.org/wiki/Pand%C3%A9mie_de_Covid-19_en_France) j'avais mis de côté ce billet, mais avec la rentrée scolaire qui approche, je pense qu'il est tend de le finaliser !

Depuis quelques années j'utilise [Slack](https://slack.com/intl/fr-fr/) dans mon travail, recevant des notifications (plus ou moins pertinentes) tout au long de la journée.

Aussi, j'ai pensé que ce serait l'outil idéal pour me rappeler l'heure à laquelle quitter mon bureau pour arriver à l'heure à l'école de mon fils.

![](/images/leo-bot-demo.png "Capture d'écran d'une notification Slack")

J'ai donc entrepris de réaliser un bot très simple, à l'aide de [Botkit](https://github.com/howdyai/botkit), qui me hélerait au moment du départ.

<!-- break -->
Pour fonctionner le bot à besoin de :

- un *token* autorisant l’interaction avec Slack
- un [fichier de configuration](https://github.com/Narno/leo-bot/blob/master/.env.dist) afin d’indiquer le canal (_channel_) à notifier, ainsi que l'heure et la fréquence de rappel
- un worker (ex : [Heroku](https://www.heroku.com)) pour dynamiser le tout

Pour plus de détails sur la mise en œuvre (et l'accès à la documentation) je vous invite à consulter la page GitHub du projet : [github.com/Narno/leo-bot](https://github.com/Narno/leo-bot).

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/Narno/leo-bot)