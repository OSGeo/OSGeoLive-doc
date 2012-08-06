:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-gvSIG.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.gvsig.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


gvSIG Desktop
================================================================================

SIG bureautique
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

gvSIG est une application bureautique de Système d'Information Géographique (SIG)
conçue pour saisir, stocker, manipuler, analyser et déployer toutes sortes d'information
géographique afin de résoudre des problèmes de gestion complexe et d'aménagement.
gvSIG est connu pour son interface faicle à utiliser et il est capable
d'accéder à tous les formats communs vecteur et raster. Il offre
un grand nombre d'outils pour travailler avec de l'information géographique (requête,
création de mise en page, géotraitements, réseaux, etc.), qui font de gvSIG un outil
idéal pour les utilisateurs qui travaillent dans le domaine terrestre.

gvSIG est connu pour:

* intégrer dans la même vue aussi bien des données locales qu'à distance grâce aux standards de l'OGC.
* être facilement étendu, permettant une amélioration continue de l'application, 
  aussi bien que de permettre le développement de solutions sur mesure.
* être disponible dans plus de 20 langues (Espagnol, Anglais, Allemand, Français 
  Italien,...) .
* être disponible sur les plateformes Windows, Linux, et Mac OS X:

.. image:: ../../images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Eléments centraux
--------------------------------------------------------------------------------

* Fournit des outils de SIG courants tels le chargement de données, la navigation cartographique, les requêtes 
  d'informations cartographiques tout comme alphanumeriques, la mesure de distances, la cartographie thématique,
  l'édition de l'égende en utilisant les types de légende courants, l'étiquetage,
  la sélection d'entités par de nombreux types de sélection, les tables de données avec des statistiques,
  le tri, les relations entre, les liens entre tables, la gestion des mises en page, les outils de géotraitement,
  la DAO, le traitement raster etc.

* Interopérabilité: capable de travailler avec les formats de données les plus connus:

  * raster : ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, ...
  * vecteur & DAO: shapefile, GML, KML, DGN, DXF, DWG
  * bases de données: PostGIS, MySQL, Oracle, ArcSDE
  * télédétection: ECWP, ArcIMS, standards OGC

* Client de services de recherche pour localiser des ressources de donnéesdans une SDI (Spatial Data Infrastructure)
 (services de cataloguage et de géoréférencement)
  
  * Catalogues: Z3950, SRW, CSW (ISO/19115 and ebRIM)
  * Géoréférencement: ADL, WFS, WFS-G
  
* Plus de 290 algorithmes spatiaux grâce à l'intégration des librairies SEXTANTE et GRASS
  
* Outils de dessin avancés :

  * données vecteur: modification, création et suppression d'éléments
  * console de commande d'élements types dans les logiciels de DAO
  * outils comme l'aide, la grille, enchaînement de commandes, sélections d'éléments complexes
  * outils pour l'insertion d'éléments comme des points, des polygones, des lignes, des ellipses, etc...
  * outils pour modifier la rotation, la symétrie,...
  
* Outils raster avancés:

  * géoréférencement et reprojection
  * exportation, découpage
  * légendes, histogrammes
  * filtres, vectorisation
  * vues d'ensembles et gestion de régions d'intérêt

* Support de scripts
* Outil de reprojection puissant à partir de PROJ4


Standards implémentés
--------------------------------------------------------------------------------

Support avancé comme client de nombreux standards de l'Open Geospatial Consortium (OGC)

* Chargement de couches WMS, WFS et WCS 
* Export/import de légendes SLD
* Export/import de Web Map Context (WMC)
* Recherches dans des catalogues avec CSW (ISO/19115 et ebRIM)
* Recherche sur des services de géoréférencement utilisant la recommandation WFS-G

Détails
--------------------------------------------------------------------------------

**Site Web:** http://www.gvsig.org/

**License:** GNU General Public License (GPL) version 2

**Version du logiciel:** 1.11

**Platformes supportées:** Windows, Linux, Mac

**Support:** http://www.gvsig.org/web/organization/services


.. _gvSIG: http://www.gvsig.org

Démarrage rapide
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/gvsig_quickstart>`