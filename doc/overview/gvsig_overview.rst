:Author: Jorge Sanz
:Author: Manuel Madrid
:Author: Mario Carrera 
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_gvsig@
@OSGEO_KIND_gvsig@



gvSIG Desktop
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

gvSIG_ is a Geographic Information System (GIS) desktop application designed for capturing, storing, handling, analysing and deploying any kind of referenced geographic information in order to solve complex management and planning problems. gvSIG is known for its user-friendly interface and being able to access all common vector and raster formats. It features a wide range of tools for working with geographic information (query, layout creation, geoprocessing, networks, etc.), which turns gvSIG into the ideal tool for users working in the land realm.

gvSIG is known for:

* integrating in the same view both local and remote data through OGC standards.
* being easily extendible, allowing continuous application enhancement, as well as enabling the development of tailor-made solutions.
* being available in over 20 languages (Spanish, English, German, French, Italian,...).
* being available for Windows and Linux (there are also non-oficial Mac OS X versions).

.. image:: /images/projects/gvsig/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Core Features
--------------------------------------------------------------------------------

* Provides common GIS tools like data loading, map navigation, query map information like alphanumeric information, distance measurement, thematic cartography, legend edition using common legend types, labelling, feature selection by many selection types, data tables with statistics, ordering, table relations, table linking, layout manager, geoprocessing tools, CAD, raster processing, etc.

* Interoperable: able to work with most known data formats:

  * raster : ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, NetCDF...
  * vector & CAD: shapefile, NetCDF, GML, KML, DGN, DXF, DWG
  * databases: PostGIS, MySQL, Oracle, ArcSDE
  * remote: OGC standards (WMS, WMTS, WFS, WCS), OSM, ECWP, ArcIMS

* Discovery services client to localize data resources within an SDI (catalogue and gazeteer services)

  * Catalogues: Z3950, SRW, CSW (ISO/19115 and ebRIM)
  * Gazetteers: ADL, WFS, WFS-G

* More than 300 geoalgorithms via SEXTANTE library

* Integrated advanced CAD tools:

  * vector data: modify, create and delete elements
  * command console typical element in CAD software
  * tools like help, grid, command stack, complex element selections
  * tools for inserting elements like points, polygons, lines, ellipses, etc...
  * tools to modify its rotation, scale, symmetry,...

* Integrated advanced raster tools:

  * georeferencing and reprojecting
  * export, clipping
  * look up tables, histogram
  * filters, vectorization
  * overviews and regions of interest management 

* 3D View 

* Other features: 

  * Scripting support (for both vector and raster data)
  * Powerful reprojection engine via PROJ4
  * Import/export symbol sets
  * Map sheets composer
  * Charts
  * Advanced symbology tools
  * Advanced labelling tools 
  * Publishing extension 
  * Portable views 
  * Customized distributions  

Implemented Standards
--------------------------------------------------------------------------------

Advanced client support of numerous Open Geospatial Consortium (OGC) standards

* Load WMS, WMTS, WFS and WCS layers
* Export/import of SLD legends
* Export/import of Web Map Context (WMC)
* Search on catalogues with  CSW (ISO/19115 and ebRIM)
* Search on gazetteers using WFS-G recommendation

Details
--------------------------------------------------------------------------------

**Website:** http://www.gvsig.com/

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** |version-gvsig|

**Supported Platforms:** Windows, Linux

**Support:** http://www.gvsig.com/en/gvsig-association, http://www.gvsig.com/en/community/mailing-lists


.. _gvSIG: http://www.gvsig.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/gvsig_quickstart>`
