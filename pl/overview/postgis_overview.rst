.. Writing Tip:
  Writing tips describe what content should be in the following section.
  The postgis_overview.rst document is used as a reference example
  for other overviews.
  All other overviews should remove the writing tips in order to make the
  overview documents easier to translate.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo-Live
:Author: Barry Rowlingson
:Translator: Milena Nowotarska, OSGeo
:Reviewer: Milena Nowotarska, OSGeo
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. Writing Tip:
  Project logos are stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/project_logos
  and accessed here:
    /images/project_logos/<filename>

.. image:: /images/project_logos/logo-PostGIS.png
  :alt: project logo
  :align: right
  :target: http://postgis.refractions.net/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

.. Writing Tip: Name of application

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

Przestrzenna baza danych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  * First sentence should explain the application.
  * Usually the application domain will not be familiar to readers. So the
    next line or two should explain the domain. Eg: For GeoKettle, the next
    line or two should explain what GoeSpatial Business Intelligence is.
  * Remaining paragraph or 2 in this overview section should provide a
    wider description and advantages from a user perspective.

PostGIS spatially enables the popular PostgreSQL object-relational database, allowing it to be used as a back-end database for geographic information systems (GIS) and web-mapping applications in the same manner as Oracle Spatial enables the Oracle database.

PostGIS jest stabilny, szybki, zgodny ze standardami, zawiera tysiące funkcji przestrzennych i jest obecnie najszerzej używanym przestrzennym systemem zarządznia bazą danych typu Open Source. PostGIS używany jest przez różne organizacje na całym świecie, łącznie z agencjami rządowymi oraz organizacjami przechowującymi terabajty danych obsługujących miliony żądań sieciowych dziennie.

Zarządzanie bazą danych jest dostępne poprzez pgAdmin, phpPgAdmin oraz inne programy. 
Import i eksport danych odbywa się przy pomocy narzędzi wiersza poleceń (shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis) 
lub klientów desktopowych, czy w przeglądarce internetowej,  służących również do przeglądania danych przestrzennych i atrybutowych PostGIS.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.png . Eg: udig_main_page.png
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: /images/screenshots/800x600/pgadmin.png
  :scale: 55 %
  :alt: pgAdmin database manager
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

* Tysiące funkcji przestrzennych
  
  * Buforowanie,  łączenie, nakładanie, pomiar odległości i inne

* ACID transactional integrity
* Indeks przestrzenny R-Tree
* Obsługa wielu użytkowników
* Row-level locking
* Replikacja
* Partitioning
* Role-based security
* Table-spaces, schemas

Zaimplementowane standardy
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* Zgodność ze standardami OGC (SFSQL)

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://postgis.refractions.net/

**Licencja:** Powszechna Licencja Publiczna GNU (GPL) wersja 2

**Wersja programu:** 2.1.3

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.
  
**Wsparcie:** http://www.osgeo.org/search_profile

Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/postgis_quickstart>`

