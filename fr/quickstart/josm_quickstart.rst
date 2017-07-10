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

-  Pour bouger la carte vers la droite ou la gauche,le hoaut ou le bas, maintenez le bouton droit
   de votre souris et bougez-la.
-  Il y a plusieurs façons de zoomer et dézoomer la carte. Si vous avez une souris,
   vous pouvez utiliser la roulette pour zoomer et dézoomer. Sur un ordinateur
   portable et sans souris, vous pouvez faire varier le niveau de zoom en utilisant
   la barre d'échelle en haut à gauche de la fenêtre de la carte. Déplacez la barre vers la gauche
   et la droite en maintenant le clic gauche et déplaçant la barre vers la droite ou la gauche.

.. image:: /images/screenshots/1024x768/josm_scale-bar.png
   :alt: Barre d'échelle


-  Regardez la carte d'exemple. Il y a plusieurs types d'objets.
   Il y a une rivière, une forêt, quelques bâtiments, plusieurs routes et une
   paire de magasins. Pour sélectionner un objet, cliquez dessus avec le
   bouton gauche de la souris.

Points, Lignes et Formes
~~~~~~~~~~~~~~~~~~~~~~~~~

-  As you click different objects on the sample map, notice that there
   are three different types of objects on the map. There are points,
   lines, and shapes.
-  Points are a single location, represented by symbols. On this sample
   map, there are two points, a shoe shop and a supermarket. The shoe
   shop is represented by a shoe symbol, and the market is represented
   by a shopping cart.
-  There are several lines on the map as well, which represent roads. If
   you look closely you will see that within the lines, there are points
   as well. These points don’t have any symbols or other information
   associated with them, but they help to define where the line is
   located.
-  Lastly, there are numerous shapes on the sample map, representing
   different places - a forest, a river, a park, and buildings. A shape
   is used to represent an area, like a field or a building. A shape is
   exactly like a line - the only difference is that the line begins at
   the same point where it ends.

    It's easy to think of a map as containing these three basic types of
    objects - points, lines, and shapes. In OpenStreetMap there is
    special terminology which you will come to learn as you progress. In
    OSM, points are actually called **nodes**, and lines are called
    **ways**. A shape is called a **closed way** because it is just a
    line that ends at the same point where it begins.

-  You may notice that when you select an object, a list appears to the
   right of the map in a window called “Properties”. These are known as
   tags. Tags are information that is tied to a point, line or shape
   that describes what it is. We’ll learn more about tags in a later
   chapter. For now all you need to know is that this information helps
   describe whether our object is a forest, a river, a building, or
   something else.
-  Think about drawing a map by hand, and how you are also drawing
   points, lines, and shapes. What other places are best represented by
   points? Lines? Shapes?

Changing Objects
~~~~~~~~~~~~~~~~

-  Select the forest on the left side of the map. Be sure to click on
   the line around the forest, not one of the points on the line. Now
   hold your left mouse button down and drag your mouse. You should be
   able to move the forest to a new location on the map.
-  Click on one of the points on the line around the forest. Hold your
   left mouse button down and drag your mouse. You should be able to
   move the point. This is how you can change the shape of an object, or
   move a point.

Drawing
~~~~~~~

-  On the left side of JOSM is a column of buttons. Many of these
   buttons open new windows on the right side that provide more
   information about the map. The most important buttons, however, are
   at the top of these column. These buttons change what you can do with
   your mouse.
-  The top buttons in this column are the ones you will use the most.
   They are used for selecting objects and for drawing new ones.
-  Until now, you have been using the Select tool, which looks like
   this:

.. image:: /images/screenshots/1024x768/josm_select-tool.png
   :alt: Select tool


-  Before you draw, you need to make sure that nothing is selected.
   Click in the black space on the map, where it is empty, to make sure
   nothing is selected.
-  Click on the second button, the Draw tool.

.. image:: /images/screenshots/1024x768/josm_draw-tool.png
   :alt: Draw tool


-  Find an empty area on the map, and double-click with your mouse. This
   will draw a single point.
-  To draw a line, single-click with your mouse. Move your mouse and
   click again. Continue until you are happy with your line. To end the
   line, double-click your mouse.
-  Draw a shape the same way that you draw a line, but finish the shape
   by double-clicking on the point where you started the line.

Add Presets
~~~~~~~~~~~

-  Now we know how to draw points, lines and shapes, but we still
   haven’t defined what they represent. We want to be able to say that
   our points are shops, schools, or something else, and whether our
   shapes are fields, buildings, or something else.
-  Click on the Select tool, in the column of buttons on the left.

.. image:: /images/screenshots/1024x768/josm_select-tool.png
   :alt: Select tool


-  Select one of the objects that you drew with the Draw tool. On the
   top menu, click “Presets”. Move your mouse through the sub-menu to
   the type of location you would like to define.
-  When you click on a preset, a form will pop up asking you for more
   information. You do not have to fill in every field, but you may wish
   to add some of the important fields, such as the name of the object.
-  When you are finished entering the information, click “Apply Preset”.
   If everything went well, your point, line, or shape should change
   colors or show a symbol. This is because you have defined what it is.

Draw Your Own Map
-----------------

-  Now let’s draw a map in order to practice the techniques you have
   learned. You may wish to redraw the map that you drew on paper
   previously.
-  Drag the map away from the sample map. Hold the right mouse button
   and drag your mouse, until you have a nice empty area to draw on.
-  Use the Draw tool to create points, lines, and shapes. Describe what
   your objects are by selecting from the Presets menu.
-  When you are finished, you should have your own map, similar to the
   sample map that we opened in sample.osm.

Remove the sample layer
-----------------------

Once you feel comfortable with these basic editing techniques you might
want to turn your attention to mapping real features.

*It is very important that you first remove the layer with the sample
data. These data are fictitious and must not be uploaded to the
OpenStreetMap database (newer JOSM releases automatically prevent
this).*

In the Layers window on the upper right of the screen select the
sample.osm layer. Then click on the trash can icon in the lower right
corner of that window. Alternatively you can choose delete from the
context menu of the layer.

What Next?
----------

-  Try the LearnOSM documentation, from which this quickstart was derived: 
   http://learnosm.org/en/josm/start-josm/
-  In order to continue editing you first need to download real data. 
   This is explained in the next chapter: 
   http://learnosm.org/en/josm/more-about-josm/
