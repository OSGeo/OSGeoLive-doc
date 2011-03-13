.. Writing Tip:
  Writing tips describe what content should be in the following section.
  The postgis_overview.rst document is used as a reference example
  for other overviews.
  All other overviews should remove the writing tips in order to make the
  overview documents easier to translate.

.. Writing Tip:
  Metadata about this document
:Author: OSGeo Live
:Version: osgeo-live4.0
:License: Creative Commons


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _postigs-overview:

.. Writing Tip:
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.refractions.net/

.. Writing Tip:
  Include an OSGeo logo if the project is an OSGeo project, or is in
  incubation. OSGeo projects are listed on this page: http://www.osgeo.org/
  .. image:: images/logos/OSGeo_incubation.png
  .. image:: images/logos/OSGeo_project.png
  
.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

.. Writing Tip: Name of application

PostGIS
=======

.. Writing Tip:
  Application Category Description:

Przestrzenna baza danych
~~~~~~~~~~~~~~~~

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

Zarządzanie bazą danych jest dostępne poprzez pgAdmin, phpPgAdmin oraz inne programy. Import i eksport danych odbywa się przy pomocy różnorodnych narzędzi do konwersji (shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis). Ponadto jest wiele klientów zarówno desktopowych jak i w przeglądarce internetowej służących do przeglądania danych PostGIS.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 55 %
  :alt: project logo
  :align: right

Główne funkcje
-------------

* Tysiące funkcji przestrzennych
  
  * Buforowanie,  łączenie, nakładanie, odległości i inne

* ACID transactional integrity
* Indeks przestrzenny R-Tree
* Obsługa wielu użytkowników
* Row-level locking
* Replikacja
* Partitioning
* Role-based security
* Table-spaces, schemas

Zaimplementowane standardy
---------------------

.. Writing Tip: List OGC or related standards supported.

* Zgodność ze standardami OGC (SFSQL)

Szczegóły
-------

**Strona internetowa:** http://postgis.refractions.net/

**Licencja:** Powszechna Licencja Publiczna GNU (GPL) wersja 2

**Wersja programu:** 1.5

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.
  
**Wsparcie:** http://www.osgeo.org/search_profile


Wprowadzenie
------------

* `Przejdź do wprowadzenia <../quickstart/postgis_quickstart.html>`_

