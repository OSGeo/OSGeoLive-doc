:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-josm.png
  :alt: project logo
  :align: right
  :target: http://josm.openstreetmap.de

JOSM
================================================================================

Editeur bureautique de données OpenStreetMap 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

JOSM est un éditeur bureautique de données OpenStreetMap (OSM), riche en fonctionnalités, extensible, utilisable hors-ligne, écrit en Java.

Il permet le chargement de traces GPX et des données de trace GPX ainsi que l'édition de *nodes* 
(points), *ways* (lignes), *tags* (étiquettes sous forme clé/valeur) et relations 
(séquence ordonnée de points et de lignes) à partir de la base de données OSM.
Les traces GPX sont généralment téléchargées à l'avance à partir d'un récepteur GPS ou à partir d'autres sources.

De nombreux plugins spécialisés ont été écrit pour JOSM, et sont disponibles au téléchargement et à l'installation.

.. image:: /images/screenshots/josm/josm_inteface.png
  :scale: 55 %
  :alt: JOSM Editor.
  :align: right

Fonctionnalités principales
--------------------------------------------------------------------------------

* Outils courants des SIG bureautique:

  * Personnalisation de la barre d'outils, contrôle de la vue (zoom, déplacement. etc), styles, icônes et gestion des couches.

* Chargement et téléchargement de données OSM vectorielles.

* Ouverture de données locales:

  * fichiers NMEA-0183 : .nmea, .nme, .nma, .log, .txt
  * fichiers OSM : .osm, .xlm, .osmbz2, .osmbz
  * fichiers de changement OSM: .osc, .osc.bz2, .osc.bz, .osc.gz
  * images (.jpg)

* Imagerie satellite:
  
  * Visualiser  les fonds de carte à partir d'OSM, Bingsat, Lansat, MapBox satellite, MapQuest Open Aerial ou n'importe quelle source WMS.

* Outils d'édition:

  * Noeuds: fusionner, joindre, séparer, distribuer, aligner dans un cercle, aligner sur un ligne, joindre  un noeud à une ligne, et plus.
  * Lignes: séparer, combiner, inverser, simplifier, décoller des lignes, et plus.
  * Surfaces: joindre des zones superposées, créer des multipolygones, et plus.

* Cartographie audio: gestion des enregistrements de levés.

* Photos de cartographie:  gestion des photographies de levés.
 
* Plugins: une liste de plugins spécialisés est disponible au téléchargement.


Standards implémentés
--------------------------------------------------------------------------------

* JOSM voit les couches WMS, mais utilise l'`API OSM <http://wiki.openstreetmap.org/wiki/API_v0.6>`_ pour communiquer avec la base de données OSM.


Détails
--------------------------------------------------------------------------------

**Site web:** https://josm.openstreetmap.de/

**Licence:** GNU General Public License (GPL) version 2. Note: JOSM plugins may use other licences.

**Version du logiciel:** r11427

**Plate-formes supportées:** Windows, GNU/Linux, Mac

**Interface de l'API:** Java


Guide de démarrage rapide
--------------------------------------------------------------------------------
 
* :doc:`Quickstart documentation <../quickstart/josm_quickstart>`


