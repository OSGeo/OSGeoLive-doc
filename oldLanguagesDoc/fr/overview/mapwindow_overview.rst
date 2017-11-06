:Author: Paul Meems, TopX Geo-ICT The Netherlands (RST conversion)
:Reviewer: Cameron Shorter, Jirotech
Translator: Nicolas Roelandt
:Product: MapWindow GIS Lite
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-MapWindow.png
  :alt: Logo de MapWindow GIS
  :align: right
  :width: 220
  :height: 38
  :target: http://www.mapwindow.org
 
MapWindow GIS
================================================================================

SIG bureautique
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapWindow GIS est un client SIG opensource pour Windows où vous pouvez visualiser, 
gérer, éditer, analyser des données et composer des cartes imprimables.
Il inclut des fonctions d'analyse très puissantes grâce à une intégration avec GEOS et GDAL/OGR.
MapWindow est facile à intégrer aussi bien dans des produits basés sur MS-Office comme MS-Excel et 
MS-Access, que des programmes écrits en C++, C#, VB.NET et Delphi, 
comme MapWindow est basé sur des contrôles ActiveX appelés MapWinGIS.

La version MapWindow Lite installée sur OSGeo-Live n'inclue pas toutes les fonctionnalités bureautiques de MapWindow (telles que 
boite à outils, plug-ins, un éditeur de shapefile pleinement fonctionnel, ou le support de PostGIS). 

.. note:: MapWindow requière  l'installation sur un système Microsoft Windows system avant de pouvoir être lancé. 
    Les fichiers d'installation sont inclus dans l'ISO `OSGeo-Live <http://live.osgeo.org>`_ ou peuvent 
    être téléchargés à partir de:  https://mapwindow4.codeplex.com/releases/view/542097.
   
.. image:: /images/projects/mapwindow/mapwindow_screenshot.png
  :alt: Mapwindow Open Source GIS Lite
  :scale: 50 %
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

* Interface graphique agréable pour les utilisateurs:

    * identifier/sélectionner des objets,
    * projection à la volée,
    * étiquetage des objets,
    * changement des symbologies vecteur et raster,
    * éditeur de shapefile
    * support de bases des données géographiques,
    * et plus encore ...

* Visualisation facile de nombreux formats vecteur et raster:

    * formats vectoriels: ESRI shapefiles, MapInfo, SDTS et GML,
    * raster formats tels que Modèle Numérique de Terrain, photographies aériennes ou les images Landsat,
    * service de tuiles, comme OpenStreetMap, MapQuest Aerial ou Bing Maps.
 
* Contrôle ActiveX:

    * utilise un contrôle ActiveX écrit en C++. Ce contrôle peut être utilisé  dans des applications customisées 
écrites dans des langages comme C++, C#, VB.NET, et Delphi, et peut aussi être utilisé dans des produits 
MS-Office tels que MS-Access et MS-Excel.

Standards implémentés
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* Standards OGC: 
    * TMS
    * Web Map Tile Service (WMTS)
    * GML    

Détails
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Site web:** http://www.mapwindow.org

**Licence:** MPLv1.1

**Version du logiciel:** MapWindowLite 4.9.5

**Plates-formes supportées:** Windows (XP or higher)

**Interfaces de l'API:** .NET (C#, VB.NET), C++, Delphi, VBA (MS-Access, MS-Excel) 

**Support communautaire:** http://www.mapwindow.org/documentation/mapwingis4.9/getting_started.html

**Support commercial:** http://www.mapwindow.nl, http://www.mapwindow.org/documentation/mapwindow5/support.html


Guide de démarrage rapide
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* :doc:`Guide de démarrage rapide <../quickstart/mapwindow_quickstart>`
