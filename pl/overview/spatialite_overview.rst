:Author: Pirmin Kalberer
:Translator: Milena Nowotarska, OSGeo
:Reviewer: Milena Nowotarska, OSGeo
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/spatialite/

SpatiaLite
================================================================================

Przestrzenna baza danych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite jest bazą danych SQLite_ z dodanymi funkcjami przestrzennymi. 

SQLite jest popularnym DBMS, prostym, solidnym, łatwym w użyciu i na prawdę lekkim. 
Każda baza danych SQLite jest po prostu plikiem; można go dowolnie kopiować, kompresować, 
przesyłać przez LAN lub WEB bez żadnych komplikacji.

Pliki można również przenosić między systemami operacyjnymi; ta sama baza danych 
będzie działać na Windows, Linux, MacOs etc.

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

The SpatiaLite extension enables SQLite to support spatial data conformant to OGC specifications.

* Supports standard WKT and WKB formats
* Implements SQL spatial functions such as AsText(), GeomFromText(), Area(), PointN() and alike
* The complete set of OpenGis functions is supported via GEOS, this comprehending sophisticated spatial analysis functions such as Overlaps(), Touches(), Union(), Buffer() ..
* Supports full Spatial metadata along the OpenGis specifications

* Supports importing and exporting to shapefiles
* Supports coordinate reprojection via PROJ.4 and EPSG geodetic parameters dataset
* Supports locale charsets via GNU libiconv
* Implements a true Spatial Index based on the SQLite's RTree extension
* The VirtualShape extension enables SQLite to access shapefiles as VIRTUAL TABLEs 
* You can then perform standard SQL queries on external shapefiles, with no need for importing or converting them
* The VirtualText extension enables SQLite to access CSV/TxtTab files as VIRTUAL TABLEs 

* You can then perform standard SQL queries on external CSV/TxtTab files or Excel tables, with no need for importing or converting them
* The GUI tool supports all this, in an user friendly way

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://www.gaia-gis.it/gaia-sins/

**Licencja:** MPL v1.1 i Powszechna Licencja Publiczna GNU (GPL) wersja 3

**Wersja programu:** spatialite 3.0.0 / librasterlite 1.0 / spatialite-gui 1.3.0 / spatialite-gis 1.0.0

**Systemy operacyjne:** Linux, Mac, Windows

**Interfejsy API:** C++

Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/spatialite_quickstart>`


