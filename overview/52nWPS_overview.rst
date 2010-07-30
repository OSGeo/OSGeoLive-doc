:Author: Bastian Schaeffer, Kristof Lange
:Version: osgeo-live4.0
:License: Creative Commons

.. _52nWPS-overview:


52°North WPS
=============

52°North Web Processing Service (WPS). 
In general, a WPS defines a standardized interface that facilitates the publishing of
geospatial processes, and the discovery of and binding to those processes by clients. 
Processes include any algorithm, calculation or model that operates on spatially referenced 
data. Publishing means making available machine-readable binding information as well as 
human-readable metadata that allows service discovery and use. 
A WPS can be configured to offer any sort of GIS functionality to clients across a 
network, including access to pre-programmed calculations and/or computation models that
operate on spatially referenced data. A WPS may offer calculations as simple as subtracting 
one set of spatially referenced numbers from another (e.g., determining the difference in 
influenza cases between two different seasons), or as complicated as a global climate 
change model. The data required by the WPS can be delivered across a network, or available
at the server.

Core Features
-------------

This 52°North WPS implementation comes with a set of basic GIS function. In detail, the following 
functions are provided as standardized WPS processes:

	* SimpleBufferAlgorithm
	* DouglasPeuckerAlgorithm
	* IntersectionAlgorithm
	
In addition, several extensions can be enabled for the WPS. These extensions connect different 
backends and allow the leveraging of the provided GIS functions from these backends over the
standardized WPS interface. 
We currently support:

	* Sextante
	* ArcGIS Server

The WPS understands several input formats and can also output data in different formats
as listed below:

Vector Data
~~~~~~~~~~~
	* GML2
	* GML3
	* ESRI SHP files
	* KML
	* WKT (Well-known Text)
	
Raster Data
~~~~~~~~~~~
	* Geotiff
	* AsciiGrid

A browser based demo client is also included with test request.
This democlient (see screenshot below) has a predefined request which can be easily send to the server.

.. image:: images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  
 

Implemented Standards
---------------------

* OGC Web Processing Service Specification
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Details
-------

**Website:** http://52north.org/wps

**Licence:** GPL

**Software Version:** WPS 2.0 RC5

**Supported Platforms:** Windows, Linux, Mac

**Commercial Support:** http://www.52north.org
