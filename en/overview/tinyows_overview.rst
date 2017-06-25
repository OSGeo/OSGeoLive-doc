:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-TinyOWS.png
  :alt: project logo
  :align: right
  :target: http://mapserver.org/tinyows/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

TinyOWS
================================================================================

Web Feature Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TinyOWS is a high performance, Transactional Web Feature Service (WFS-T) which is light weight and easy to deploy, using a CGI or FastCGI interface and using :doc:`PostGIS <postgis_overview>` for data storage.

.. image:: /images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

TinyOWS is commonly used in conjunction with :doc:`MapServer <mapserver_overview>` to provide WFS-T and fast WFS services for :doc:`QGIS <qgis_overview>` and/or :doc:`OpenLayers <openlayers_overview>` clients. It is used in production in organisations around the world, including risk adverse government agencies.
TinyOWS strictly implements the WFS 1.0 and 1.1 standards, and has passed all OGC CITE units tests (~ 1000 unit tests).

Core Features
--------------------------------------------------------------------------------

* Transactional Web Feature Service (WFS-T)
* CGI and FastCGI interface
* PostGIS data connection
* GML 2.1.2, 3.1.1 and GeoJson 1.0 output
* Configured using MapServer's configuration file, allowing a single configuration file for both applications.

Implemented Standards
--------------------------------------------------------------------------------
* WFS 1.0 and WFS 1.1: Basic and Transactionnal profiles
* FE 1.0.0 and FE 1.1.0
* GML 2.1.2 and 3.1.1 Simple Profile (SF-0)

Details
--------------------------------------------------------------------------------

**Website:** http://mapserver.org/tinyows/

**Licence:** MIT

**Software Version:** |version-tinyows|

**Supported Platforms:** Linux, Unix, Mac, Windows

**API Interfaces:** CGI/FastCGI

**Support:** http://lists.osgeo.org/mailman/listinfo/mapserver-users


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/tinyows_quickstart>`

