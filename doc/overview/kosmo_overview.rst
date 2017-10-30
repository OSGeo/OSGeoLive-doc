:Author: Sergio Baños Calvo
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_kosmo@
@OSGEO_KIND_grass@

.. image:: /images/project_logos/logo-Kosmo.png
  :alt: project logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=en

Kosmo Desktop
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Kosmo - Desktop is a user friendly, desktop GIS application which allows you to explore, edit 
and analyse spatial data from a variety of databases, vector and raster formats. 

Kosmo - Desktop follows OGC standards and provides excellent topology integrity. 
It's plug-in architecture enables it to be easily customised for specific purposes.

.. image:: /images/projects/kosmo/kosmo.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Core Features
--------------------------------------------------------------------------------

Supported formats:

* Vectorial file formats: Shapefiles, GML, DXF, DWG, DGN, CSV (by an extension), KML (by an extension)
* Vectorial databases: PostgreSQL + PostGIS, Oracle, MySQL, SpatiaLite (by an extension)
* Raster file formats: ECW (*), MrSID (*), (Geo)Tiff, Erdas IMG, ENVI hdr, JPG, GIF, PNG, BMP,...
* OGC services: WMS 1.0.0/1.1.0/1.3.0, WFS 1.0.0/1.1.0 (including WFS-T)

Key features:

* User friendly GUI, focused on an easy learning curve
* Available in 13 languages (English, Spanish, Italian, German, Croatian, Czech, Russian, Slovak, Catalan, Euskera, Brazilian Portuguese, Finnish, Portuguese)
* Advanced edition capabilities:

  * Multiple drawing tools: draw point, draw linestring, draw polygon, ...
  * CAD style tools: rotate, rotate by angle, symmetry, perpendicular, paralell, ... (by an extension)
  * Multiple snapping modes: to vertexes, to vertexes and lines, to segment mid points, to centroids, to grid, ...
  * Geometry tracking mode
  * Advanced snap manager (by an extension)  
* Advanced printing module based on OpenOffice offimatic suite (by an extension)
* Topology consistency rules: pre/during/post edition
* Topology validation and cleaning tools (intersect/eliminate/clean)
* Geoprocessing wizard extension: buffer/dissolve/merge/clip/intersection/spatial join/difference (by an extension)
* Raster georreferencing tool (by an extension)
* Sextante 1.0 integrated (by an extension)
* Massive import/export operations wizard (by an extension)
* PDF printing module (by an extension)
* GPS tools (by an extension)

.. note::
  (*) ECW and MrSID raster formats require an extra download to work: due to licensing restrictions their libraries can't be distributed


Implemented Standards
--------------------------------------------------------------------------------

* Web Map Service (WMS) 1.0.0/1.1.0/1.3.0
* Web Feature Service (WFS) 1.0.0/1.1.0
* Styled Layer Descriptor (SLD) 1.0/1.1 (import/export)


Details
--------------------------------------------------------------------------------

**Website:** http://www.opengis.es/index.php?lang=en

**Licence:** GNU General Public License (GPL) version 3

**Software Version:** |version-kosmo|

**Supported Platforms:** Windows, Linux

**API Interfaces:** Java

**Commercial Support:** http://www.saig.es/index.php?lang=en


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/kosmo_quickstart>`
