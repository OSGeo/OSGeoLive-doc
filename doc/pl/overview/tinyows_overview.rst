:Author: OSGeo-Live
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :alt: project logo
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

TinyOWS
================================================================================

Web Feature Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TinyOWS is a high performance, Transakcyjnym Web Feature Service (WFS-T) which is light weight and easy to deploy, using a CGI or FastCGI interface and using :doc:`PostGIS <postgis_overview>` for data storage.

.. image:: ../../images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

TinyOWS is commonly used in conjunction with :doc:`MapServer <mapserver_overview>` to provide WFS-T and fast WFS services for :doc:`QGIS <qgis_overview>` and/or :doc:`OpenLayers <openlayers_overview>` clients. It is used in production in organisations around the world, including risk adverse government agencies.
TinyOWS strictly implements the WFS 1.0 and 1.1 standards, and has passed all OGC CITE units tests (~ 1000 unit tests).

Główne funkcje
--------------------------------------------------------------------------------

* Transakcyjny Web Feature Service (WFS-T)
* Interfejs CGI i FastCGI
* Połączenie z bazą PostGIS
* Wyjście GML 2.1.2, 3.1.1 i GeoJson 1.0
* Configured using MapServer's configuration file, allowing a single configuration file for both applications.

Zaimplementowane standardy
--------------------------------------------------------------------------------
* WFS 1.0 i WFS 1.1: o profilach Basic i Transactionnal
* FE 1.0.0 i FE 1.1.0
* GML 2.1.2 i 3.1.1 Simple Profile (SF-0)

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://mapserver.org/trunk/tinyows/

**Licencja:** MIT

**Wersja programu:** 1.0.0

**Systemy operacyjne:** Linux, Unix, Mac, Windows

**Interfejsy API:** CGI/FastCGI

**Wsparcie:** http://lists.osgeo.org/mailman/listinfo/mapserver-users


Wprowadzenie
--------------------------------------------------------------------------------
    
* :doc:`Przejdź do wprowadzenia <../quickstart/tinyows_quickstart>`

