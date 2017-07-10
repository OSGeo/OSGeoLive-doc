:Source: https://github.com/hotosm/learnosm/blob/gh-pages/_posts/en/1900-12-21-start-josm.md
:Source Reviewed: 2016-03-30
:Author: Nick Allen
:Version: osgeo-live 11
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Reviewer: Cameron Shorter (transposed from source)

********************************************************************************
JOSM Quickstart
********************************************************************************

Ce guide de démarrage rapide couvre les usages de base de l'éditeur Java d'OpenStreetMap.

.. contents::

-  Quand JOSM démarre, cela devrait ressembler à cela:

.. image:: /images/screenshots/1024x768/josm-splash-page.png
   :alt: écran de chargement de JOSM

Préférences de JOSM
--------------------

Il y a plusieurs paraamètres que vous pouvez modifier dans JOSM. Un
paramètre que vous pouvez vouloir changer est la langue. JOSM a été
traduit dans de nombreuses langues, et vous pouvez préférer travailler dans
une langue différente.

-  Pour accèder à la fenêtre des Préférences, cliquez sur Edit -> Preferences.

.. image:: /images/screenshots/1024x768/josm_preferences.png
   :alt: Fenêtre des Préférences

-  Sur le côté gauche, cliquez sur l'icône qui ressemble à un pot de peinture et
   un pinceau.
-  En haut de la fenêtre, cliquez sur l'onglet intitulé “Look and Feel”.
-  Choisissez votre langue dans le menu déroulant à côté du mot “Language”.

.. image:: /images/screenshots/1024x768/josm_look-and-feel.png
   :alt: Onglet Look and feel

-  Cliquez sur OK.
-  Vous devez redémarrer JOSM pour sauvegarder le paramètrage. Cliquez “File” dans le
   coin supérieur gauche, et cliquez sur “Restart” en bas du menu.

Apprendre les techniques de base de dessin avec JOSM
-----------------------------------------------------

-  Maintenant ouvrons un fichier OSM que  nous utiliserons pour apprendre les
   méthodes basiques pour dessiner des cartes avec JOSM. Notez que cette carte n'est pas réelle,
   que ce n'est pas une carte réelle d'un endroit réel, donc nous n'aurons pas besoin de sauvegarder nos changements
   sur OpenStreetMap.
-  Téléchargez le fichier ici: `sample.osm <http://learnosm.org/files/sample.osm>`__
-  Maintenant ouvrons-le dans JOSM. Cliquez sur le bouton “Open”
   en haut à gauche.

.. image:: /images/screenshots/1024x768/josm_open-file.png
   :alt: Ouvrir un fichier

-  Trouvez le fichier **sample.osm**. Il est probablement dans votre dossier Téléchargements,
   à moins que vous l'ayez sauvegardé ailleurs. Cliquez dessus, puis
   cliquez sur “Open”.
-  Vous devriez voir un exemple de carte qui ressemble à ça:

.. image:: /images/screenshots/1024x768/josm_sample-file.png
   :alt: fichier exemple


-  Vous utiliserez ces données dans le but d'essayer différentes techniques d'édition.
   *Vous ne devez jamais charger dans la base de données ces données fictives.*

Opérations basiques
~~~~~~~~~~~~~~~~~~~~

-  Pour déplacer la carte de droite à gauche ou de haut en bas, utilisez le bouton
   droit de votre souris, que vous devez laissez appuyé tout en déplaçant votre souris.
-  Il y a plusieurs façons de zoomer ou dézoomer la carte. Si vous avez une molette
   sur votre souris, vous pouvez l’utiliser. Sinon, vous pouvez utiliser le curseur
   dans le coin en haut à gauche de la carte. Déplacer la barre vers la gauche ou
   vers la droite avec votre souris pour zoomer ou dézoomer.

.. image:: /images/screenshots/1024x768/josm_scale-bar.png
   :alt: Barre d'échelle


-  Regardez la carte d'exemple. Il y a plusieurs types d'objets.
   Il y a une rivière, une forêt, quelques bâtiments, plusieurs routes et une
   paire de magasins. Pour sélectionner un objet, cliquez dessus avec le
   bouton gauche de la souris.

Points, lignes et polygones
~~~~~~~~~~~~~~~~~~~~~~~~~

-  En cliquant sur différents objets de la carte, vous pouvez remarquer qu'il
   y a trois types différents d'objets sur la carte. Il y a les points,
   lignes et les polygones.
-  Les points sont des lieux simples, représentés par des symboles.
   Dans notre carte d’exemple, nous avons deux points: une boutique de vêtements
   et un marché. La boutique de vêtements est représentée par une image de maillot
    et le marché, par un panier de courses.
-  Il y a aussi des lignes sur la carte, qui représentent des routes. Si vous regardez
   attentivement vous remarquerez que les lignes contiennent des points. Aucune
   information et aucun symbole n’est associé avec ces points: leur rôle est de
   déterminer le tracé de la ligne.
-  Enfin, il y a différents polygones, qui représentent plusieurs lieux: une forêt,
   une rivière, et des bâtiments. Un polygone représente généralement une aire,
   par exemple un champ ou un bâtiment. Le polygone est en fait une ligne avec une
   caractéristique notable: dans le cas d’un polygone, la ligne commence et finit
   sur le même point.

    Il est facile de penser une carte comme contenant ces trois types d'objets
    de base - points, linges et formes. Dans OpenStreetMap il y a
    une terminologie spéciale que vous apprendrez en progressant. Dans
    OSM, les points sont appelés **nodes** (noeuds), les linges sont appelées
    **ways** (voies). Une forme est appelée **closed way** (voie fermée) car c'est
    seulement une ligne qui se termine sur le point où elle commence.

-  Vous avez peut-être remarqué la fenêtre «Attributs» qui apparaît sur la droite
   quand vous sélectionnez un objet. Celle-ci liste ce qu’on appelle les tags.
   Les tags sont associés un point, une ligne ou un polygone, et permettent de les
   définir. Nous en apprendrons un peu plus sur les tags dans le chapitre 7,
   «Édition avancée avec JOSM». Pour le moment, retenez que les tags servent à déterminer
   si un objet est une forêt, une rivière, un bâtiment, ou autre chose.
-  Pensez au cartes dessinées à la main, est-ce qu’on utilise pas là aussi des points,
   des lignes et des polygones ? Quels lieux peuvent être représentés par des
   points ? par des lignes ? par des polygones ?

Modifier les objets
~~~~~~~~~~~~~~~~~~~~

-  Sélectionnez la forêt qui est sur la gauche de la carte. Faites bien attention
   de cliquer sur la ligne qui entoure la forêt, et pas sur un des points qui la
   constituent. En maintenant votre clic droit enfoncé et en déplaçant votre souris,
   vous devriez être capable de changer la forêt de position.
-  Cliquez maintenant sur un des points constituant le polygone de la forêt.
   À l’aide de votre souris, en maintenant le clic gauche enfoncé, vous devriez
   pouvoir déplacer ce point. C’est la façon de faire si vous avez besoin de
   changer la forme d’un polygone, ou tout simplement pour changer la position d’un point.

Tracer
~~~~~~~

-  Tout à gauche de la fenêtre de JOSM, il y a une barre d’outils. Une partie de
   ces boutons permettent d’ouvrir des fenêtres à droite qui affichent des informations
   supplémentaires sur la carte. Mais les boutons qui nous intéressent pour le moment
   sont en haut de cette barre d’outils. Ces boutons permettent de définir ce que
   vous pouvez faire avec votre souris.
-  Les quatre boutons du haut sont les plus importants.
   Ils sont utilisés pour sélectionner les objets et en dessiner de nouveaux.
-  Jusqu’à présent, vous avez utilisé l’outil de sélection, qui ressemble à
   ceci:

.. image:: /images/screenshots/1024x768/josm_select-tool.png
   :alt: Outil de sélection


-  Avant de commencer à tracer, assurez-vous que rien n’est sélectionné. Pour cela,
   toujours avec l’outil de sélection, cliquez dans une zone vide de la carte.
-  Vous pouvez maintenant cliquer sur le deuxième bouton, celui pour tracer.

.. image:: /images/screenshots/1024x768/josm_draw-tool.png
   :alt: Outil de traçage


-  Dans une zone vide de la carte, double-cliquez avec le bouton gauche de votre
   souris. Vous venez de créer un point.
-  Pour tracer une ligne, faites un simple clic avec votre souris. Déplacez votre
   souris et cliquez de nouveau. Continuez jusqu’à que vous ayez obtenu le résultat
   souhaité. Pour finir la ligne, double-cliquez avec votre souris.
-  Le procédé est le même pour tracer un polygone, mais vous devez finir le polygone
   en double-cliquant sur le premier point de la ligne.

Utiliser les modèles d'attributs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Nous savons désormais comment tracer des points, des lignes et des polygones,
   mais pour l’instant nous n’avons pas défini ce qu’ils représentent. Nous voulons
   être capable de dire qu’un point est une boutique, une école, ou autre chose,
   et de même si nos polygones sont des champs, des bâtiments, ou autre chose.
-  Dans la barre d’outils à gauche, cliquez de nouveau sur l’outil de sélection.

.. image:: /images/screenshots/1024x768/josm_select-tool.png
   :alt: Outil de sélection


-  Sélectionnez un des objets que vous venez de tracer. Dans le menu du haut,
   cliquez sur «Attributs». Déplacer votre souris dans les sous-menus jusqu’à trouver
   le type de lieu que vous souhaitez.
-  Après avoir sélectionné un modèle d’attributs, une fenêtre devrait s’ouvrir pour
   vous permettre d’ajouter des informations. Tous les champs ne sont pas obligatoires,
   mais vous voudrez certainement ajouter les plus importants, par exemple le nom de votre lieu.
-  Quand vous avez renseigné toutes les informations voulues, appuyer sur «Appliquer
   les attributs». Si tout s’est bien passé, votre point, ligne ou polygone devrait
   changer de couleur ou afficher un symbole. C’est parce que vous avez maintenant
   défini de quoi il s’agit.

Tracer votre carte
--------------------

-  C’est le moment de tracer une carte pour mettre en pratique ce que l’on vient
   d’apprendre. Vous pouvez par exemple tracer la carte que vous aviez dessiné précedemment.
-  À l’aide du bouton droit de votre souris, déplacez-vous dans une zone de la carte totalement vide.
-  Utilisez l’outil de tracé pour créer des points, des lignes et des polygones.
   N’oubliez pas de définir les objets en utilisant le menu «Attributs».
-  Quand vous aurez fini, vous devriez avoir une carte similaire à celle que nous
   avons chargée avec le fichier «sample.osm».

Supprimer la couche d'exemple
-----------------------

Une fois que vous êtes à l'aise avec les tehniques de tracé, you souhaitez probablement
vous tourner vers des entités réelles.

*Il est très important que vous supprimiez la couches avec les données
d'exemple. Ces données sont fictives et ne doivent pas être chargées dans
la base de données OpenStreetMap (les versions les plus récentes de JOSM prévienne cela
automatiquement).*

Dans la fenêtre Couches dans le coin en haut à droite de l'écran, sélectionnez
la couche sample.osm. Puis cliquez sur la corbeille en bas à droite
de cette fenêtre. Vous pouvez aussi supprimer cette couche à l'aide du
menu contextuel.

Et ensuite ?
-------------

-  Essayez la documentation de LearnOSM, dont ce guide est dérivé:
   http://learnosm.org/fr/josm/start-josm/
-  Pour pouvoir continuer à éditer vous devez préalablement télécharger des données réelles.
   Ceci est expliqué dans le chapitre suivant:
   http://learnosm.org/en/josm/more-about-josm/
