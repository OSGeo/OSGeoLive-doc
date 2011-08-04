:Author: OSGeo-Live
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution 3.0 Unported  (CC BY 3.0)

.. _tinyows-overview:

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.tinyows.org/

TinyOWS
=======

Web Feature Service
~~~~~~~~~~~~~~~~~~~

TinyOWS ist ein transaktionaler Web Feature Service (WFS-T), der hochperformant und leichtgewichtig ist. Er kann einfach 
einfach ausgerollt (deployed) werden und verwendet CGI oder Fast CGI Schnittstellen sowie :doc:`posgis_overview` für die Speicherung der Daten.

.. image:: ../../images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

TinyOWS is commonly used in conjunction with MapServer to provide WFS-T and fast WFS services for QGIS and/or OpenLayers clients. It is used in production in organisations around the world, including risk adverse government agencies.
TinyOWS strictly implements the WFS 1.0 and 1.1 standards, and has passed all OGC CITE units tests (~ 1000 unit tests).

kernfunktionen
--------------

* transaktionaler Web Feature Service (WFS-T)
* CGI und Fast-CGI interface
* PostGIS data connection
* GML 2.1.2, 3.1.1 and GeoJson 1.0 output
* Configured using MapServer's configuration file, allowing a single configuration file for both applications.

Implemented Standards
---------------------
* WFS 1.0 and WFS 1.1: Basic and Transitional profiles
* FE 1.0.0 and FE 1.1.0
* GML 2.1.2 and 3.1.1 Simple Profile (SF-0)

Details
-------

**Website:** http://www.tinyows.org/

**Licence:** MIT

**Software Version:** 1.0

**Supported Platforms:** Linux, Unix, Mac, Windows

**API Interfaces:** CGI - Fast CGI

**Support:** http://lists.maptools.org/pipermail/tinyows-users/


Quickstart
----------
    
* :doc:`Quickstart documentation <../quickstart/tinyows_quickstart>`

