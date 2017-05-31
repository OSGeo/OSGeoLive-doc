:Author: Barry Rowlingson
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-R.png
  :alt: project logo
  :align: right

********************************************************************************
Démarrage rapide R
********************************************************************************

R est un environnement libre dédié au calcul statistique et à la création de graphiques

Ce guide de démarrage rapide décrit comment : 

  * utiliser R pour des calculs arithmétiques simples
  * charger des données depuis un shapefile et les afficher
  * faire un changement de système de projection
  * afficher des points sur une carte
  
Démarrer R
================================================================================

Pour commencer deux solutions: 

  * choisir ``R Statistics`` dans le menu Outils spatial - une fenêtre de terminal apparaît dans laquelle R fonctionne.
  * Entrer ``R`` comme ligne de commande dans le prompt du terminal. R démarrera dans ce terminal.
  
Ne vous effrayez pas de la ligne de commande - c'est un outil d'une très grande puissance. Utilisez les flèches haut et bas
pour rappeler des commandes que vous avez déjà effectuées, vous pouvez comme ça corriger des erreurs, ce qui pourra vous aider
beaucoup. Taper CTRL-C si vous êtes bloqué en cours d'exécution pour abandonner l'action en cours et revenir au prompt.

Quitter R
================================================================================

Tout dans R est une fonction, y compris la fonction pour quitter . Tapez ``q()`` suivi de la touche entrée.
Si vous ne saisissez que ``q`` vous verrez s'afficher le code source de la fonction ``q``.

R vous demandera si vous voulez sauvegarder votre espace de travail comme une image de données R. 
Quand vous redémarrerez R depuis un répertoire contenant un fichier ``.RData`` il devrait restaurer 
toutes les données telles que vous les aurez alors laissées.


Débuter avec R
================================================================================

R est essentiellement un programme en ligne de commande, bien que
des interfaces graphiques soient disponibles. Vous tapez une ligne de code
dans le prompt et pressez entrée, et l'interpréteur R l'évalue pour retourner
le résultat.

Vous pouvez commencer avec de l'arithmétique simple.

::

   > 3*2
   [1] 6

   > 1 + 2 * 3 / 4
   [1] 2.5

   > sqrt(2)
   [1] 1.414214

   > pi * exp(-1)
   [1] 1.155727


Un grand nombre de fonctions arithmétiques, trigonométriques et statistiques sont
intégrées dans R et des centaines d'autres sont disponibles depuis les packages dans 
les archives `CRAN <http://cran.r-project.org/>`

L'indicateur de prompt courant dans R est ``>``, mais il existe aussi le prompt de
continuation ``+``, qui apparaît si R attend plus d'entrées pour avoir une expression
valide. Vous pouvez retrouver ce signe si vous avez oublié de fermer un crochet ou
une parenthèse.

::

   > sqrt(
   + 2
   + )
   [1] 1.414214


Construire des Données
================================================================================

Vous vous demandez peut-être ce que le mystérieux 'un' entre crochets fait dans
la sortie. C'est pour vous dire que le résultat est un nombre. R peut aussi 
stocker des "choses" dans un vecteur à une dimension, dans une matrice à deux dimensions, 
et dans des tableaux multi-dimensionnels. Il y a plusieurs fonctions pour générer ce
genre de choses. Ici une simple séquence : 

::

    > seq(1, 5, len=10)
    [1] 1.000000 1.444444 1.888889 2.333333 2.777778 3.222222 3.666667 4.111111
    [9] 4.555556 5.000000

Maintenant vous pouvez voir que ``[9]`` est donné quand 4.555 est la neuvième valeur 
du vecteur.

Si vous construisez une matrice vous avez alors les étiquettes des lignes et des colonnes.
::

	> m=matrix(1:12, 3, 4)
	> m
	     [,1] [,2] [,3] [,4]
	[1,]    1    4    7   10
	[2,]    2    5    8   11
	[3,]    3    6    9   12

Les éléments des matrices (comme des vecteurs) peuvent être extrait en utilisant les crochets, 
avec les indices de lignes et de colonnes séparées par des virgules. Laissez un indice blanc si 
vous voulez une ligne ou une colonne entière qui sera alors présentées sous forme d'un vecteur.
Utilisez un vecteur en indice pour sélectionner plusieurs lignes ou plusieurs colonnes pour former une
petite matrice.

::

	> m[2,4]
	[1] 11

	> m[2,]
	[1]  2  5  8 11

	> m[,3:4]
	     [,1] [,2]
	[1,]    7   10
	[2,]    8   11
	[3,]    9   12


Les Data Frames sont des données structurées à la manière des structures de base de données
comme PotgreSQL ou MySQL. Chaque ligne peut être prise comme un enregistrement, avec des étiquettes
pour appeler les champs comme dans une base de données. Et comme dans une base de données chaque
champ doit contenir le même type de données.

Souvent les Data frames fonctionnent comme des matrices, mais vous pouvez aussi appeler les les colonnes
ou les lignes en utilisant la notation $-notation : 

::

	> d = data.frame(x=1:10, y=1:10, z=runif(10)) # z is 10 random numbers
	> d
	        x  y          z 
	    1   1  1 0.44128080 
	    2   2  2 0.09394331 
	    3   3  3 0.51097462 
	    4   4  4 0.82683828 
	    5   5  5 0.21826740 
	    6   6  6 0.65600533 
	    7   7  7 0.59798278 
	    8   8  8 0.19003625 
	    9   9  9 0.24004866 
	    10 10 10 0.35972749 

	> d$z
	 [1] 0.44128080 0.09394331 0.51097462 0.82683828 0.21826740 0.65600533
	 [7] 0.59798278 0.19003625 0.24004866 0.35972749

	> d$big = d$z > 0.6  # d$big est un boolean avec les valeur true/false 
	> d[1:5,]
	  x y          z   big
	1 1 1 0.44128080 FALSE
	2 2 2 0.09394331 FALSE
	3 3 3 0.51097462 FALSE
	4 4 4 0.82683828  TRUE
	5 5 5 0.21826740 FALSE

	> d$name = letters[1:10] # crée un nouveau champ contenant des caractères
	> d[1:5,]
	  x y          z   big name
	  1 1 1 0.44128080 FALSE    a
	  2 2 2 0.09394331 FALSE    b
	  3 3 3 0.51097462 FALSE    c
	  4 4 4 0.82683828  TRUE    d
	  5 5 5 0.21826740 FALSE    e



Charger des Données Cartographiques
================================================================================

Il y a beaucoup de packages pour la manipulation de données spatiales et pour faire
de la géostatistique. Quelques-uns sont inclus ici, et d'autres sont téléchargeables
depuis le CRAN.

Ici nous allons charger deux shapefiles - les pays et les zones peuplées depuis 
le jeu de données "the Natural Earth". Nous utilisons deux packages add-on pour
avoir des fonctionnalités spatiales.

::

	> library(sp)
	> library(maptools)

	> countries = readShapeSpatial("/usr/local/share/data/natural_earth/10m_admin_0_countries.shp")
	> places = readShapeSpatial("/usr/local/share/data/natural_earth/10m_populated_places_simple.shp")
	> plot(countries)

Nous donne une simple carte du monde : 

.. image:: ../../images/screenshots/1024x768/r_plot1.png

Quand un jeu de données OGR est lu dans R nous pouvons de cette manière récupérer
un objet qui ressemble de plusieurs manières à un data frame. Nous pouvons
juste utiliser le champ ``ADMIN`` pour récupère seulement le royaume uni.

::

	> uk = countries[countries$ADMIN=="United Kingdom",]
	> plot(uk); axis(1); axis(2)

.. image:: ../../images/screenshots/1024x768/r_plot2.png

Cela peut sembler un peu compliqué pour celui qui arrive ici sans être
un peu familier avec les systèmes de coordonnées centrés sur nos latitudes. Actuellement
l'objet n'a pas de système de coordonnées assigné - et nous pouvons le vérifier avec
quelques fonctions : 

::

	> proj4string(uk)
	[1] NA


``NA`` est un marqueur de données manquantes. Nous devons assigner un CRS à cet objet avant
de pouvoir le transformer avec la fonction spTransform du package rgdal. Nous le transformons 
en l'EPSG:27700 qui est en vigueur dans le système de référence de Grande-Bretagne. 

::

	> proj4string(uk)=CRS("+init=epsg:4326")
	> library(rgdal)
	> ukos = spTransform(uk,CRS("+init=epsg:27700"))
	> proj4string(ukos)
	[1] " +init=epsg:27700 +proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +ellps=airy +datum=OSGB36 +units=m +no_defs
	+towgs84=446.448,-125.157,542.060,0.1502,0.2470,0.8421,-20.4894"

	> plot(ukos);axis(1);axis(2)

Cela va afficher la carte de base des données transformées. Maintenant nous voulons ajouter 
quelques points issus des données sur les zones peuplées. Encore une fois on découpe les données
des points et leurs appliquons une transformation dans le système de coordonnées "rdnance Survey Grid".

::

	> ukpop = places[places$ADM0NAME=="United Kingdom",]
	> proj4string(ukpop)=CRS("+init=epsg:4326")
	> ukpop = spTransform(ukpop,CRS("+init=epsg:27700"))

Nous ajoutons ces points à la carte, et ajustons l'échelle des symboles en utilisant 
la racine carrée de la population (pour avoir des symboles proportionnels), définissons
la couleur de contour en rouge et la forme du point en "blob solid".

::

	> points(ukpop,cex=sqrt(ukpop$POP_MAX/1000000),col="red",pch=19)
	> title("UK Population centre sizes")

et au final l'image apparaît.

.. image:: ../../images/screenshots/1024x768/r_plot3.png

Vignettes
================================================================================

Par le passé la documentation pour les packages R avait tendance à être laconique sur bien des points
pour chaque fonction. Aujourd’hui les auteurs de packages sont très largement encouragés à écrire
une 'vignette' pour aider à la prise en main des fonctions de leurs packages. Si vous entrez juste 
``vignette()`` sans arguments cela devrait vous renvoyer une liste de tous les arguments que peut
prendre la fonction sur votre système. Essayez ``vignette("sp")`` pour une petite introduction technique
aux structures spatiales dans R, ou ``vignette("spdep")`` pour une explication des analyses statistiques
ou de l'auto-corrélation spatiale. La ``vignette("gstat")`` renvoie un tutoriel pour l'usage de ce package
pour des interpolations spatiales et une introduction au Kriging.

Lecture avancée
================================================================================

Pour des informations générales au sujet de R essayez le site officiel : `Introduction to R <http://cran.r-project.org/doc/manuals/R-intro.html>`_
ou toute documentation venant des pages `R Project <http://www.r-project.org/>`_

Pour plus d'informations sur les aspects spatiaux de R, le meilleur endroit pour commencer est probablement 
`R Spatial Task View <http://cran.r-project.org/web/views/Spatial.html>`_

Vous serez peut-être aussi intéressé par la page `R-Spatial <http://r-spatial.sourceforge.net/>`_
sur sourceforge pour avoir quelques liens en plus y compris des informations sur la liste de diffusion 
R-sig-Geo.
