:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/wps


52°North WPS
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 52°North :doc:`Web Processing Service (WPS) <../standards/wps_overview>` enables web access to geospatial
processing algorithms provided by Sextante, ArcGIS Server, R, GRASS 7, or custom developed
functions. Algorithms may be as simple as determining the difference in 
influenza cases between two different seasons, or as complicated as a global climate change model.

.. image:: /images/screenshots/800x600/52nWPS_welcome_page.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Core Features
--------------------------------------------------------------------------------

Core GIS functions:

* SimpleBufferAlgorithm
* DouglasPeuckerAlgorithm
* IntersectionAlgorithm
* AddRasterValuesAlgorithm
* CoordinateTransformAlgorithm
	
Backend algorithms available through:

* Sextante
* ArcGIS Server
* R
* GRASS 7

Input and Output formats supported:

* Vector Data: GML2, GML3, SHP files, KML, WKT (Well-known Text), DGN, JSON
* Raster Data: Geotiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA
* Outputs can be stored in GeoServer/MapServer

A browser based client

Implemented Standards
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Details
--------------------------------------------------------------------------------

**Website:** http://52north.org/wps

**Licence:** GPL 2

**Software Version:** |version-52nWPS|

**Supported Platforms:** Windows, Linux, Mac

**Commercial Support:** http://52north.org

**Other 52°North projects:** :doc:`SOS <./52nSOS_overview>`


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nWPS_quickstart>`


