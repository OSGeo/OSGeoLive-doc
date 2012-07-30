:Author: Hamish Bowman
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: Logo du projet
  :align: right
  :target: http://www.osm.org/


OpenStreetMap
================================================================================

Données cartographiques
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap est une carte du monde alimenté par une "foule de gens" qui a grandit pour devenir une des sources disponible les plus détaillées pour les données à l'échelle locale. Les données source de la carte sont créées et maintenues par des milliers de volontaires autour du monde, en utilisant des processus similaire à ceux servant à la maintenance de l'encyclopédie Wikipédia.

L'aspect le plus visible aspect de OSM est l'interface en ligne avec une carte tuilée de http://osm.org, mais les cartes peuvent aussi être vues, importées, ou éditées dans de nombreuses applications  comme Quantum GIS, OpenLayers, ArcGIS et des applications dédiées utilisant OSM.

Le coeur du projet est la donnée sous-jacente qui est ouverte pour éditer, voir ou bien créer des rendus cartographiques personnalisés. Fondamentalement OSM se concentre sur la donnée, les cartes enrichies découlent simplement de ce fait.

La distribution OSGeo-Live inclut un extrait des données de l'échelle d'une ville qui est utilisée pour les exemples par certaines des applications.

.. image:: ../../images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: Capture d'écran OSM
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

* Objets vecteur sont taggés avec des noms et d'autres attributs.
* Extraits locaux de la donnée principale.
* Données stockées sous forme de noeuds contenant des coordonnées en latitude-longitude (WGS84), des chaînes de noeuds, et des fonctionnalités d'ordre supérieures permettant de gérer une couverture ponctuelle, linéaire et surfacique.
* Taggage des attributs riche, souvent bien plus détaillés que beaucoup d'autres sources.
* Dépôt global de connaissance locale.

Jeux de données inclus dans OSGeo-Live
--------------------------------------------------------------------------------

Nottingham.osm.bz2:
 Un large extrait de la surface de l'agglomération dans un fichier text XML compressé dans un BZip2

Nottingham_CBD.osm.bz2:
 Un sous-ensemble couvrant juste le centre-ville.

Détails
--------------------------------------------------------------------------------

**Site web:** http://www.osm.org

**License:** Licence CC-By-SA et Open Data Commons Open Database (ODbL)

**Version de la donnée:** extrait de la base "en continue"

**Format de données:** XML

**Système de coordonnées spatial:** Lat-Long WGS84

**Support:** http://wiki.osm.org

