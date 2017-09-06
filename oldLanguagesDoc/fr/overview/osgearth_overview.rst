:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-osgearth.png
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
================================================================================

Boîte à outils de rendu de terrain
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

osgEarth est une boîte à outils de rendu de terrain adaptable pour OpenSceneGraph_ (OSG), une boîte à outils, hautement performante, de graphiques 3D. Vous n'avez qu'à créer un fichier simple XML, de l'indiquer dans vos données d'élévation vectorielles ou image, de le charger dans votre appliction OSG préférée, et en avant!
osgEarth supporte tous les types de données et il est fournit avec un grand nombre d'exemples pour vous aider à vous lancer et avancer rapidement et facilement. 

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: /images/projects/osgearth/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Eléments centraux
--------------------------------------------------------------------------------

osgEarth permet de déployer facilement des modèles de terrain adaptables: 

* Création de modèles de terrain - ou bien hors ligne, ou de façon dynamique avec un run-time 
* Chargement de modèles de terrain sur l'ensemble du globe sans écrire aucun code 
* Une couche image pour insérer des données de haute résolution 
* Combinaison à la volée d'images multiples, de données d'élévation et vectorielles
* Mise en cache de tuiles de cartes pour maximiser les perfomances 
* Ajustement de l'opacité de couches pour des effets multi-textures 

Mais osgEarth fait beaucoup plus que du rendu de terrain: 

* Drapage de données vectorielles de SIG sur le terrain 
* Reprojection de données dans de nombreux systèmes de coordonnées
* Placement de modèles de terrain avec des coordonnées lat/long 
* Tests rapides d'intersection
* Incorporation de nouvelles données dans les bases de données VPB existantes (sans les reconstruire) 
* Accés direct aux tuiles du terrain pour les processus non-visuels 

Les choses que vous pouvez voir:

* Fichierds image GeoTIFF et Modèles Numériques de terrain (Digital Elevation Model - DEM) (plus de nombreux autres formats) 
* Données vectorielles comme les shapefiles d'ESRI
* Compatible avec les données de services de cartographie en ligne de l'OGC (comme WMS_) 
* Couches SIG publiées avec MapServer_ ou `ArcGIS Server d'ESRI`_
* Cartes en ligne comme OpenStreetMap_, `ArcGIS Online`_, ou `NASA OnEarth`_

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ArcGIS Server d'ESRI`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


Détails
--------------------------------------------------------------------------------

**Site Web:** http://osgearth.org/

**License:** GNU Lesser General Public License (LGPL) 

**Version de logiciel :** 2.5.0

**Platformes supportées:** Linux, Mac, Windows

**Interfaces API:** C++

**Support commercial:** http://osgearth.org/#ProfessionalServices


Démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/osgearth_quickstart>`