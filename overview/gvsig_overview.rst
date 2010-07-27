:Author: OSGeo Live
:Version: osgeo-live4.0
:License: Creative Commons

.. _gvsig-overview:

.. image:: images/project_logos/logo-gvsig.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://www.gvsig.org/

.. image:: images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


gvSIG Desktop
================

Desktop GIS
~~~~~~~~~~~~~~~~


gvSIG_ is a Geographic Information System (GIS), that is, a desktop application
designed for capturing, storing, handling, analysing and deploying any kind of
referenced geographic information in order to solve complex management and
planning problems. gvSIG is known for having a user-friendly interface, being
able to access the most common formats, both vector and raster ones. It features
a wide range of tools for working with geographic-like information (query tools,
layout creation, geoprocessing, networks, etc.), which turns gvSIG into the
ideal tool for users working in the land realm.

gvSIG is known for:

* integrating in the same view both local and remote data through OGC standards.
* being designed to be easily extendible, allowing continuous application 
  enhancement, as well as enabling the development of tailor-made solutions.
* being available in more than 20 languages (Spanish, English, German, French, 
  Italian,...) .
* being developed using Java, and being available for Linux, Windows and
  Mac OS X platforms:

.. image:: images/screenshots/1024x768/gvsig.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Core Features
-------------

* Provides the most common GIS tools like data loading, map navigation, query 
  map information like alphanumeric information, distance measurement, thematic
  cartography, legend edition using the most common legend types, labelling,
  feature selection by many selection types, data tables with statistics,
  ordering, table relations, table linking, layout manager, geoprocessing tools,
  CAD, raster processing, etc.

* Interoperable: able to work with most of the known data formats:

  * raster : ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, ...
  * vector & CAD: shapefile, GML, KML, DGN, DXF, DWG
  * databases: PostGIS, MySQL, Oracle, ArcSDE
  * remote: ECWP, ArcIMS, OGC standards

* Discovery services client to localize data resources within an
  SDI (catalogue  and gazeteer services)
  
  * Catalogues: Z3950, SRW, CSW (ISO/19115 and ebRIM)
  * Gazetteers: ADL, WFS, WFS-G
  
* More than 290 geoalgorithms thanks to SEXTANTE_ library (even with 
  GRASS integration)
  
* Integrated advanced CAD tools:

  * functionality for vector data edition: modify, create and delete elements
  * command console typical element in CAD software
  * tools like help tools, grid tools, command stack, complex element selections
  * tools for inserting elements like points, polygons, lines, ellipses, etc...
  * tools to modify its rotation, symmetry,...
  
* Integrated advanced raster tools:

  * georeferencing and reprojecting
  * export, clipping
  * look up tables, histogram
  * filters, vectorization
  * overviews and regions of interest management

* Scripting support
* Powerful reprojection engine (PROJ4 wrapper)


Implemented Standards
---------------------

Advanced client support of numerous Open Geospatial Consortium (OGC) standards

* Load WMS, WFS and WCS layers
* Export/import of SLD legends
* Export/import of Web Map Context (WMC)
* Search on catalogues with  CSW (ISO/19115 and ebRIM)
* Search on gazetteers using WFS-G recommendation

Details
-------

**Website:** http://www.gvsig.org/

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 1.10 (beta)

**Supported Platforms:** Windows, Linux, Mac

**Support:** http://www.gvsig.org/web/organization/services


.. _gvSIG: http://www.gvsig.org
.. _SEXTANTE: http://forge.osor.eu/projects/sextante/
