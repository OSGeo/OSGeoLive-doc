:Source: https://github.com/hotosm/learnosm/blob/gh-pages/_posts/en/0200-12-23-id-editor.md
:Source Reviewed: 2016-03-30  
:Author: Nick Allen
:Version: osgeo-live 11
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Reviewer: Cameron Shorter (transposed from source)

********************************************************************************
The iD Editor
********************************************************************************

L’éditeur iD (lancé en 2013) est le nouvel éditeur d’OpenStreetMap basé sur des technologies web. 
iD est rapide et facile à utiliser, et il permet d’utiliser différentes sources de données comme de l’imagerie satellite, des coordonnées GPS et les Field Papers.

L’éditeur iD est le meilleur moyen d’éditer la carte pour faire toutes les petites modifications qui ne requièrent pas toute la complexité de JOSM. Ce chapitre explique les principes d’édition avec iD.
.. contents:: Sommaire

Commencer avec l’éditeur iD
-------------------------------------------

- pour utiliser iD vous devez être connecté(e) à Internet.
-  Ouvrir votre navigateur Internet et rendez-vous sur le site d’OpenStreetMap à l’adresse 
   http://www.openstreetmap.org.
-  **Connectez-vous** en utilisant votre compte OpenStreetMap.
-  Rendez-vous sur la zone à modifier et zoomez.
-  Cliquez sur la petite flèche à côté de **Edit**. Puis cliquez sur **Edit with iD
   (in-browser editor)**.

  .. image:: /images/screenshots/1024x768/id-editor_image1.png

Interface Utilisateur de l'éditeur iD
-------------------------------------------

  .. image:: /images/screenshots/1024x768/id-editor_image2.png

1. **Panneau d'édition des entités (*Features*):** Ce panneau montre les tags des objets sélectionnés sur la carte.

   Vous pouvez ajouter ou éditer des tags à partir de ce panneau.

2. **Outils:** Ce panneau montre les outils d'édition de base:

   Dessiner un point (node), *Raccourci clavier* **1** |image3|

   Dessiner une ligne (way), *Raccourci clavier* **2** |image4|

   Dessiner une forme (polygon), *Raccourci clavier* **3** |image5|

   Annuler, *Raccourcis clavier* **Ctrl+z** |image6|

   Répéter, *Raccourcis clavier* **Ctrl+y** |image7|

   Sauvegarder les changements, *Raccourcis clavier* **Ctrl+s** |image8|

3. **Panneau Carte:** Ce panneau montre divers fonctions de configuration:

   Zoomer, *Raccourci clavier* **+** |image9|

   Dézoomer, *Raccourci clavier* **-** |image10|

   Aller à votre position |image11|

   Configurer le fond de carte, *Raccourci clavier* **b**

   Données de la carte, *Raccourci clavier* **f**

   Ouvrir le menu d'aide, *Raccourci clavier* **h**

4. **Panneau Information:** Ce panneau montre diverses informations, telles que l'échelle 
   et quels utilisateurs ont contributé à cette zone.

Configurer le fond de carte
--------------------------------

  Cliquer sur bouton **paramètres du fond de carte** ou utiliser le *raccourci clavier*
  **b**. |image14|

  |image15|

  Pour changer la **luminosité** sur une de ces cases à cocher, les niveaux sont
  100%, 75%, 50%, and 25% |image16|

  Vous pouvez aussi **changer le fond de carte** basé sur votre fournisseur de tuile désiré
  (Bing Aerial Imagery est la valeur par défaut).

  Vous pouvez ajouter vos propres tuilesen cliquant sur **Custom**. Par exemple,
  si vous voulez ** ajouter un Field Paper**  [1], cliquez sur **Custom** puis
  cliquez sur la loupe (recherche) pour ouvrir la fenêtre
  suivante:-

  |image17|
  Et saisir votre **FieldPaper snapshot URL**, qui devrait être quelque chose ressemblant à ça :
  http://fieldpapers.org/snapshot.php?id=cqhmf2v9#18/37.80593/-122.22715

  Pour **afficher des traces GPS à partir de votre ordinateur** (au format GPX), cliquez-glissez
  le fichier GPX dans l'éditeur iD.

  Pour activer ** les traces GPS OpenStreetMap** cliquez sur la case à cocher. Dans l'image
  ci-dessous, les traces GPS publiques sont montrées dans des couleurs variées, indiquant la direction du voyage.

  |osm gps traces|
 
  Si il y a un  `décalage de l'image </en/josm/aerial-imagery>`__, vous pouvez
  **corriger le décalage de l'image** en cliquant sur **Fix Alignment**.

  |image18|

-  Cliquez sur les boutons de navigation pour bouger l'image aérienne. Cliquez sur
   le bouton **reset** pour revenir à la position par défaut. |image20|

Edition simple avec iD
-------------------------------------------

Ajout de Points
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Pour ajouter un nouveau point, cliquez sur le bouton **Point**. |image3|

-  Votre curseur de souris devrait se changer en signe plus (+). Maintenant, cliquez 
   sur une position que vous connaissez pour marquer un emplacement. Par exemple, si vous savez qu'il 
   y a un hôpital dans votre zone, cliquez sur la position
   du bâtiment de l'hôpital.

   |image21|

-  Remarquez qu'un nouveau point a été ajouté. En même temps, le panneau gauche
   change pour afficher un formulaire où vous pouvez sélectionner les attributs
   pour l'objet. Cliquez sur **Hospital Grounds** pour tagger le point comme un hôpital.

   |image22|

-  Vous pouvez utiliser le formulaire pour fournir des informations détaillées sur votre point.
   Vous pouvez saisir le nom et l'adresse de votre hôpital, et/ou tout autre
   information. Notez que chaque entité aura des options différentes,
   selon le tag vous avez choisi depuis le panneau **Entités** (*Features*).
-  Si vous faites une erreur, comme un mauvais placement, vous pouvez bouger votre
   point vers un nouvel emplacement en maintenant votre clic gauche maintenu sur le
   point et en le faisant glisser. Ou, si vous désirez supprimer votre point, faites un clic 
   gauche sur le point, activer le menu contextuel en
   faisant un clic droit et ensuite cliquer sur le bouton
   qui ressemble à une poubelle. |image23|

   Un "point" créé dans l'éditeur iD editor est actuellement un "noeud" (*node*) seul
   avec un ensemble de "tags".

Dessiner des lignes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Pour ajouter une nouvelle ligne, cliquez sur le bouton **Ligne**. |image4|

-  Votre curseur de souris devrait se changer en signe plus (+). Trouvez une route qui
   n'est pas dessinée sur la carte et traçez-la. Cliquez une fois sur un point
   là où le segment de route commence, bougez votre souris, et cliquez pour ajouter
   des points additionnels. Double-cliquez pour terminer la phase de dessin. Remarquez
   le panneau sur la gauche.

   |image24|

-  Tout comme pour le point, sélectionnez les tags appropriés pour votre ligne.
-  Vous pouvez déplacer des points de la ligne en faisant un clic gauche avec la souris
   sur un point et en déplacant la souris en maintenant le clic gauche.
-  Vous pouvez aussi déplacer la ligne entièrement en la sélectionnant, et en choisissant
   l'**outil de déplacement** (*Move Tool*). Puis en déplaçant la ligne jusqu'à une nouvelle position. |image30|
-  Quand vous cliquez sur un point individuel (node) de la ligne avec le bouton gauche de votre souris
   puis faites un clic droit pour afficher le menu contextuel, vous devriez voir 
   apparaître les outils suivants:
-  Supprimer le point de la ligne. |image23|
-  Déconnecter le point de la ligne. |image26|
-  Séparer la ligne en deux à partir du point sélectionné.
   |image27|
-  Quand vous faites un clic gauche sur une ligne (mais pas sur un point),
   vous verrez les outils suivants:
-  Supprimer ligne. |image23|
-  Créer un cercle à partir de la ligne (actif uniquement si la ligne est close)
   |image29|
-  Bouger la ligne |image30|
-  Former un carré à partir de la ligne (actif uniquement si la ligne est close)
   |image31|
-  Inverser la direction de la ligne (bien pour les cours d'eau et les rues à sens unique)
   |image32|

Une "ligne" crée dans l'éditeur iD est en fait une "way" avec des "tags" dessus.

.. note::
    Remarque spéciale à propos de la **Supression**: En général, vous devriez éviter de
    supprimer la cartographie d'autres utilisateurs si elle demande uniquement une amélioration.
    Vous pouvez supprimer vos propres erreurs, mais vous devriez seulement *ajuster* les objets
    cartographiés par d'autres si ils ont besoin de changements. Cela préserve
    l'historique des objets dans la base de données d'OSM et respectueux de nos camarades
    cartographes. Si vous pensez quelque chose doit être supprimé, pensez
    à demander au cartographe originel ou une des liste de diffusion d'OSM en premier lieu.

Dessiner des formes (Polygones)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Pour ajouter un polygone, cliquez sur le bouton **Area**.

  |image34|

-  Votre curseur de souris devrait se changer en signe plus (+). Essayez de tracer un
   bâtiment en utilisant l'image satellite comme un guide.
-  Vous remarquerez que la couleur de la forme changera en fonction
   des propriétés que vous lui assignez. |image35|
-  Les outils disponibles quand vous sélectionnez une forme et activez le
   menu contextuel avec le clic droit sont similaires à ceux disponibles
   quand vous cliquez sur une ligne.

Un "polygone" dans l'éditeur iD est en fait un "closed way" avec des tags dessus.

Dessiner des Multipolygones
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Parfois vous avez besoin de dessiner un polygone qui n'a pas qu'un contour intérieur
mais aussi un ou plusieurs contours intérieurs. Pensez juste aux bâtiments avec
des cours intérieures ou aux lacs avec des îles. *Ne dessinez pas toutes ces chemins
avec une seule ligne* de sorte que le contour intérieur reste accroché au contour externe.
Dessinez plutôt des contours séparés, affectez les tags au contour extérieur
seulement, selectionnez tous les contours et tapez **c** de façon à les combiner en
ce qui est appelé un multipolygone.

  .. image:: /images/screenshots/1024x768/id-editor_create_multipolygon.png
   :alt: create multipolygon


Quand vous sélectionnez n'importe lequel des contours du nouveau multipolygone,
vous pouvez voir sur la gauche à quels multipolygones il appartient.

  .. image:: /images/screenshots/1024x768/id-editor_part_of_multipolygon.png
   :alt: part of multipolygon


Sauvegardes ses changements
-------------------------------------------

Quand (et si) vous voulez sauvegardez vos changements sur OpenStreetMap, cliquez le
  bouton **Save**. Le panneau gauche devrait afficher le panneau de chargement à distance.

  |image36|

-  Saisissez un commentaire à vos changement et cliquez sur  **Save**.

    Si vous avez édité les mêmes entités (*point*, *way* ou *area*) en même
    qu'uen autre personne, vous recevrez un avertissement comme quoi  
    vos changements ne peuvent chargé tant que vous n'aure pas résolu les **conflits**
    (*conflicts*) - Choisissez les changements à accepter et chargez vos changements.
    * Résoudre les conflits implique souvent d'accepter les changements d'autres personnes,
    auquel cas vous devrez probablement revenir sur l'entité
    en question et la changer encore une fois (** cette fois en sauvegardant rapidement après le changement
    pour éviter les conflits !**).*

Informations additionnelles et Tags personnalisés
-------------------------------------------

Quand vous éditez un objet, vous verrez une bande d'icônes en bas
du panneau d'attribut. Vous pouvez ajouter des informations additionnelles en cliquant
sur ces icônes:

-  Ajouter l'altimétrie |image37|
-  Ajouter des notes |image38|
-  Ajouter un contact / numéro de téléphone |image39|
-  Ajouter un tag source |image40|
-  Ajouter un site web |image41|
-  Ajouter une information d'accessibilité |image42|
-  Ajouter un lien Wikipedia |image43|

Ou, vous pouvez ajouter des tags personnalisés en cliquant sur **All tags**. |image44|

- Ce affichera tous les tags attachés à l'entité.

   |image45|

-  Cliquez sur le signe (+) pour ajouter des couples clés/valeurs ou cliquez
   sur la corbeille pour supprimer des tags.

iD versus JOSM
--------------

**iD est suffisant...**

-  Quand vous faites des changements simples
-  Quand votre connexion Internet est suffisamment rapide pour charger l'imagerie satellite et sauvegarder les changements
-  Quand vous voulez être sûr de faire un schéma d'étiquetage cohérent et simple
-  Quand vous ne pouvez pas installer de logiciels sur l'ordinateur
   que vous utilisez

**JOSM est plus efficace...**

-  Quand vous ajoutez plusieurs bâtiments (voir le plugin buildings_tool)
-  Quand vous éditez plusieurs polygones ou lignes déjà existants
-  Quand votre connexion Internet n'est pas fiable ou que vous êtes hors ligne
-  Quand vous appliquez un schéma d'étiquetage particulier (ou des paramètres personnalisés)

Ensuite ?
----------

- Essayez la documentation de LearnOSM, dont ce guide de démarrage rapide est dérivé: http://learnosm.org/en/beginner/id-editor/

.. |image3| image:: /images/screenshots/1024x768/id-editor_image3.png
  :height: 24px
.. |image4| image:: /images/screenshots/1024x768/id-editor_image4.png
  :height: 24px
.. |image5| image:: /images/screenshots/1024x768/id-editor_image5.png
  :height: 24px
.. |image6| image:: /images/screenshots/1024x768/id-editor_image6.png
  :height: 24px
.. |image7| image:: /images/screenshots/1024x768/id-editor_image7.png
  :height: 24px
.. |image8| image:: /images/screenshots/1024x768/id-editor_image8.png
  :height: 24px
.. |image9| image:: /images/screenshots/1024x768/id-editor_image9.png
  :height: 24px
.. |image10| image:: /images/screenshots/1024x768/id-editor_image10.png
  :height: 24px
.. |image11| image:: /images/screenshots/1024x768/id-editor_image11.png
  :height: 24px
.. |image12| image:: /images/screenshots/1024x768/id-editor_image12.png
  :height: 24px
.. |Map Data| image:: /images/screenshots/1024x768/id-editor_map_data.png
.. |image13| image:: /images/screenshots/1024x768/id-editor_image13.png
  :height: 24px
.. |image14| image:: /images/screenshots/1024x768/id-editor_image14.png
  :height: 24px
.. |image15| image:: /images/screenshots/1024x768/id-editor_image15.png
.. |image16| image:: /images/screenshots/1024x768/id-editor_image16.png
  :height: 24px
.. |image17| image:: /images/screenshots/1024x768/id-editor_image17.png
.. |osm gps traces| image:: /images/screenshots/1024x768/id-editor_gps_public.png
.. |image18| image:: /images/screenshots/1024x768/id-editor_image18.png
.. |image20| image:: /images/screenshots/1024x768/id-editor_image20.png
.. |image21| image:: /images/screenshots/1024x768/id-editor_image21.png
.. |image22| image:: /images/screenshots/1024x768/id-editor_image22.png
.. |image23| image:: /images/screenshots/1024x768/id-editor_image23.png
  :height: 24px
.. |image24| image:: /images/screenshots/1024x768/id-editor_image24.png
.. |image30| image:: /images/screenshots/1024x768/id-editor_image30.png
  :height: 24px
.. |image26| image:: /images/screenshots/1024x768/id-editor_image26.png
  :height: 24px
.. |image27| image:: /images/screenshots/1024x768/id-editor_image27.png
  :height: 24px
.. |image29| image:: /images/screenshots/1024x768/id-editor_image29.png
  :height: 24px
.. |image31| image:: /images/screenshots/1024x768/id-editor_image31.png
  :height: 24px
.. |image32| image:: /images/screenshots/1024x768/id-editor_image32.png
  :height: 24px
.. |image34| image:: /images/screenshots/1024x768/id-editor_image34.png
  :height: 24px
.. |image35| image:: /images/screenshots/1024x768/id-editor_image35.png
.. |image36| image:: /images/screenshots/1024x768/id-editor_image36.png
.. |image37| image:: /images/screenshots/1024x768/id-editor_image37.png
  :height: 24px
.. |image38| image:: /images/screenshots/1024x768/id-editor_image38.png
  :height: 24px
.. |image39| image:: /images/screenshots/1024x768/id-editor_image39.png
  :height: 24px
.. |image40| image:: /images/screenshots/1024x768/id-editor_image40.png
  :height: 24px
.. |image41| image:: /images/screenshots/1024x768/id-editor_image41.png
  :height: 24px
.. |image42| image:: /images/screenshots/1024x768/id-editor_image42.png
  :height: 24px
.. |image43| image:: /images/screenshots/1024x768/id-editor_image43.png
  :height: 24px
.. |image44| image:: /images/screenshots/1024x768/id-editor_image44.png
  :height: 24px
.. |image45| image:: /images/screenshots/1024x768/id-editor_image45.png

