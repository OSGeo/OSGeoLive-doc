:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
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

.. image:: ../../images/screenshots/1024x768/52n_test_client.png
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

* Vector Data: GML2, GML3, SHP files, KML, WKT (Well-known Text), DGN
* Raster Data: Geotiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA

A browser based client

Implemented Standards
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Details
--------------------------------------------------------------------------------

**Website:** http://52north.org/wps

**Licence:** GPL

**Software Version:** WPS 3.0

**Supported Platforms:** Windows, Linux, Mac

**Commercial Support:** http://www.52north.org


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nWPS_quickstart>`


