:Author: Bastian Schaeffer, Kristof Lange
:Version: osgeo-live4.0
:License: Creative Commons

.. _52nWPS-overview:

.. image:: images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/wps


52°North WPS
==========

52°North Web Processing Service (WPS). This WPS provides basic GIS
function via standardized OGC interfaces. A demo client is included
with
test request.

Core Features
-------------

* Full java-based Open Source implementation.
* Supports all features and operations of WPS specification version 1.0.0 (document 05-007r7)
* Pluggable framework for algorithms and XML data handling and processing frameworks
* Build up on robust libraries (JTS, geotools, xmlBeans, servlet API, derby)
* Supports full logging of service activity
	* Supports exception handling according to the spec
	* Storing of execution results
	* Full maven support
	
* Synchronous/Asynchronous invocation
* Raw data support
* Supports HTTP-GET for Execute
* Supports SOAP
* Exposes a WSDL document
* Supported WPS Datatypes
	* GeoTiff Support
	* ArcGrid Support
	* Full GML2 and GML3 support for ComplexData (i.e. FeatureCollections)
	 
* Extensions
	* 220+ SEXTANTE Processes
	* Unicore GRID Middleware support
	* Transactional Profile (WPS-T)
	* Web GUI to maintain the service
	* ArcGIS Server Connector

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

**Programming Language:** Java
