:Author: Johannes Wilden
:Translator: Milena Nowotarska, OSGeo
:Reviewer: Milena Nowotarska, OSGeo
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _deegree-overview:

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://deegree.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


deegree
================================================================================

Usługi sieciowe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

deegree is free, stable, powerful and easy to use. deegree is
the most comprehensive set of implementations of Open Geospatial
Consortium (OGC) standards in free and open source software, ranging
from a transactional Web Feature Service to three-dimensional data
display through a Web Terrain Service and many more!

deegree is a solution for web- and desktop-based
Geographic Information Systems (GIS) and Spatial Data Infrastructures
(SDI). It is comprised of a comprehensive yet powerful Java Application
Programming Interface (API) and a powerful object-relational mapping for
simple and complex spatial schemas. deegree also provides a set of
standards-compliant webservices for web mapping, feature and catalogue
services as well as sensor and processing services.

deegree gets your SDI up and running, using your own data and fulfilling
your requirements.


.. image:: ../../images/screenshots/1024x768/deegree_mainpage.jpg
  :scale: 50%
  :alt: project logo
  :align: right

Niektóre przykładowe funkcje
--------------------------------------------------------------------------------

* Web Map Service

  * very flexible concerning layer contents
  * obsługa i stosowanie definicji stylów (SLD 1.0)
  * możliwości map tematycznych poprzez wykresy (okrągłe, słupkowe, 
    liniowe) jako symbolizacja punktowa
  * źródła danych: wszystkie powszechne usługi sieciowe OGC (WMS, 
    WFS, WCS), PostgreSQL/PostGIS, Oracle Spatial, wszystkie zapytania 
    SQL mogą być użyte do utworzenia zawartości warstwy WMS
  * bardzo stabilny, nawet przy dużych skalach
  * obsługa żądań HTTP GET, HTTP POST oraz feature info
  * certyfikat zgodności ze standardami OGC

* Web Feature Service

  * obsługa prostych jak i złożonych obiektów
  * transformacja współrzędnych w locie dla ponad 3000 ukłdów współrzędnych
  * supports flexible output formats
  * easily enhanced to support INSPIRE directive

* Web Coverage Service

  * obsługa żądań HTTP GET i HTTP POST
  * bazy danych: obrazy (tif, png, jpeg, gif, bmp); GeoTIFF; pliki ECW; Oracle GeoRaster
  * szybki dostęp do do dużych pokryć

* Catalogue Service

  * źródła danych: PostgreSQL-Database; Oracle-Database
  * obsługa żądań: GetCapabilities; DescribeRecord; GetRecordById; GetRecords; 
    Transaction - Insert, Update, Delete; Harvesting

* Web Map Print Service

  * obsługa wielu formatów wydruku (HTML, PDF, PNG)
  * obsługa wydruków długich w czasie
  * obsługa żądań asynchronicznych umożliwiające wydruki wielkoskalowe
  * żądania przechowywane w bazie zanychmogą być dostępne nawet jeśli WMPS 
    jest zatrzymane przez administratora lub błąd komputera

* Web Perspective View Service

   * źródła danych: zdalny/lokalny-WMS, zdalny/lokalny-WFS, lokalny-WCS, 
     Postgres/PostGIS, Oracle Spatial
   * modelami terenu mogą być dane wektorowe lub rastrowe
   * zapytania: Get3DFeatureInfo, GetView


Zaimplementowane standardy
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 w trakcie)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 w trakcie)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; łącznie z OGC ISOAP 1.0 
  i profilem INSPIRE
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://deegree.org

**Licencja:** GNU Mniejsza Powszechna Licencja Publiczna (LGPL)

**Wersja programu:** |version-deegree|

**Systemy operacyjne:** Windows, Linux

**Interfejsy API:** Java

**Wsparcie:** http://wiki.deegree.org/deegreeWiki/GettingSupport


Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/deegree_quickstart>`


