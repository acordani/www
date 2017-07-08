---
layout: post
date: 25 Juin 2017
meta_title:  "Rails - Et si on codait ... "
author: Alex
labels:
  - Programmation
thumbnail: interieur.jpg
description: "Je souhaite mettre en place un nouveau site web sur l'immobilier de St Maur et je vais le faire pas à pas avec vous."
---


1- Pour réaliser un site, il faut d'abord se poser comme question, "Que va-t-on y mettre ?"

En effet, c'est la première question à se poser car de ces reponses vont découler les differentes pages.

Je reponds partiellement à cette question en allant sur differents sites immobiliers qui existent actuellement.

Nous allons preciser une idée sur les differentes fonctionnalitées, ce qui nous permettra de définir les differentes routes(pages du site).

Un utilisateur non connecté:
Un utilisateur peut regarder un bien en particulier
Un utilisateur peut faire une recherche par prix, par quartier.
Un utilisateur peut voir la totalité des biens à vendre
Un utilisateur peut envoyer un message
Un utilisateur peut s'inscrire et se connecter à son compte

Un utilisateur connecté:
Un utilisateur peut mettre des biens en favoris
Un utilisateur peut rentrer son bien tout seul sur le site et le mettre en vente.
Un utilisateur peut demander à avoir un compte premium avec differents avantages.


2- Puis ```rails s```   . s comme server
Si on va sur localhost:3000, ca donne:

![rails new](blog_image_path Etsy-1.jpg)

3- ```rails g controller Pages about contact``

4- Maintenant si on va sur localhost:3000/pages/about

5- ```rails g scaffold Listing name:string description:text price:decimal```

6- ```rails db:migrate```

7- 7
8- ```root 'listings#index'``

```@restaurants = Restaurant.all```