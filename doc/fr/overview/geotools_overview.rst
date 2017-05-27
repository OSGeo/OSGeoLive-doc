:Author: Jody Garnett
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GeoTools.png
  :alt: project logo
  :align: right
  :target: http://geotools.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoTools
================================================================================

GeoTools est une librairie Java libre (LGPL) qui propose des méthodes conformes pour la manipulation 
de données géospatiale et utilise une structuration de la donnée basée sur les spécifications
de l'Open Geospatial Consortium (OGC).


.. image:: ../../images/screenshots/800x600/geotools-overview.png
  :scale: 60 %
  :alt: GeoTools is a modular library supported by plugins for additional formats
  :align: right

GeoTools est utilisé par un grand nombre de projets y compris de services web, 
des outils en ligne de commande et des applications de bureau. Les applications
de l'OSGeo-live DVD qui embarque GeoTools sont :
:doc:`52nSOS_overview`, :doc:`52nWPS_overview`, :doc:`atlasstyler_overview`, :doc:`geomajas_overview`, :doc:`geopublisher_overview`, :doc:`geoserver_overview`, and :doc:`udig_overview`.

Éléments centraux
--------------------------------------------------------------------------------

* Définition d'interfaces pour des concepts clefs et la structuration des données

  * Intègre le support de la Géométrie grâce à `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_
  * Filtre spatial et sur les attributs utilisant l'OGC Encoding specification
  
* Un accès clair à l'API supportant l'accès au éléments, les transactions et le verrouillage entre les threads

  * Accèes aux données SIG dans plusieurs formats de bases de données spatiale
  * Système de coordonnées et support des transformations
  * Travail avec un très grand nombre de projections cartographiques
  * Filtre et analyse des données sur leurs caractéristiques spatiales et non spatiales
  
* Une basse consommation de la mémoire particulièrement adapté dans un environnement serveur.
  
  * composition et affichage de carte avec des styles complexe
  
* La puissante du *schéma assisté*, une technologie d'analyse à l'aide d'un schéma XML pour lier au contenu GML 

  * la technologie d'analyse / encodage est fournie avec une compatibilité avec de nombreuses normes
    de l'OGC GML, y compris, le filtre, KML, SLD, et SE.

* Les plug-in GeoTools :  ouvrir et utiliser le système de plug-in vous permettra d'enrichir la librairie de 
  formats supplémentaires

  * Plug-in pour les ImageIO-EXT  permet à GeoTools de lire des formats additionnels venant de GDAL
  
* Extantions GeoTools 

  * Permet l'ajout de possibilités de construction utilisant les possibilités des éléments 
    centraux de la librairie
  
  .. image:: ../../images/screenshots/800x600/geotools-extension.png
     :alt: Extensions built using the GeoTools library

  * Les extensions permettent de construire de graphe de réseau (pour trouver le chemin le plus court), la validation,
    un client cartographique web, XML bindings, parsing et encodage, coloration, palette de couleurs.

* GeoTools non supporté

  * GeoTools propose aussi dans le cadre de sa communauté, et garce à une zone de test de porter 
    de nouveau talent et de promouvoir l'expérimentation.
  
  * Parmis les choses intéressantes également existe le swing support (utilisé dans les tutoriels geotools), swt , locale et web processus, des symbologies additionnelles, 
    des format additionnels, la génération de grids et de certaines implémentations de l'ISO - Geometry
  
Formats supportés
-----------------  
* Accès aux données au formats raster: 
  
  arcsde, arcgrid, geotiff, grassraster, gtopo30, image (JPEG, TIFF, GIF, PNG), imageio-ext-gdal, imagemoasaic, imagepyramid, JP2K, matlab.
  
* Support de bases de données "jdbc-ng":
  
  db2, h2, mysql, oracle, postgis, spatialite, sqlserver.

* Accès aux données au format vecteur:
  
  app-schema, arcsde, csv, dxf, edigeo, excel, geojson, org, property, shapefile, wfs.

* XML Bindings:

  Java data structures et bindings proposé pour la gestion des flux:
  xsd-core (xml simple types), fes, filter, gml2, gml3, kml, ows, sld, wcs, wfs, wms, wps, vpf.
  
  Géométrie additionnelle, filtre et style analyseur (parser)/encodeur pour DOM et application SAX.
  
Standads implémenté
--------------------------------------------------------------------------------

Support d'un grand nombre de standards de l'Open Geospatial Consortium (OGC) :

* OGC Style Layer Descriptor / Symbology Encoding data structures and rendering engine
* OGC General Feature Model including Simple Feature support
* OGC Grid Coverage representation of raster information
* OGC Filter and Common Constraint Language (CQL)
* Clients for Web Feature Service (WFS), Web Map Service (WMS) and experimental support for Web Process Service (WPS)
* ISO 19107 Geometry

Détails
--------------------------------------------------------------------------------
 
**Website:** http://geotools.org/

**Licence:** LGPL

**Software Version:** 8.0

**Supported Platforms:** Cross Platform Java

**API Interfaces:** Java

**Support:** `Communication and Support <http://docs.geotools.org/latest/userguide/welcome/support.html>`_

Quickstart
--------------------------------------------------------------------------------

* `Quickstart documentation <http://docs.geotools.org/latest/userguide/tutorial/quickstart/index.html>`_
