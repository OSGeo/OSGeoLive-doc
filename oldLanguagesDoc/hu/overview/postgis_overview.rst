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
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zoltan Siki
:Version: osgeo-live7.9
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
  :target: http://postgis.net/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Projekt
  :align: right
  :target: http://www.osgeo.org

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

Téradatbázis
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

A PostGIS térinformatikai képességekkel bővíti a népszerű PostgreSQL
objektum-relációs adatbázist, ezzel lehetővé téve, hogy a térinformatikai 
rendszerek (GIS) és web-térkép alkalmazások háttér adatbázisa legyen, hasonlóan
mint ahogy az Oracle Spatial kibővíti az Oracle adatbázis képességeit.

A PostGIS egy stabil, gyors, szabvány követő szoftver, 
a térinformatikai függvények százaival, jelenleg a legszélesebb körben
használt nyílt forráskódú táradatbázis. A szervezetek széles köre használja
világszerte, a kockázat kerülő kormányzati intézmények és terabájtos adatokból
milliónyi internetes lekérdezést kiszolgáló cégek is.

Az adatbázis adminisztráció elérhető közvetlenül a gépről vagy webes
kapcsolaton keresztül, pgAdmin, phpPgAdmin vagy más programmal.
Adatok importálása és exportálása parancssori eszközökkel (shp2pgsql, pgsql2shp,
ogr2ogr, dxf2postgis) vagy asztali és webes GIS kliensekkel valósíthtó meg.
Ezek a kliensek képesek megjeleníteni és manipulálni a PostGIS téradatokat
tartalmazó táblákat.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.png . Eg: udig_main_page.png
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: /images/screenshots/pgadmin/pgadmin.png
  :scale: 70 %
  :alt: pgAdmin adatbázis kezelés
  :align: right

Alapfunkciók
--------------------------------------------------------------------------------

* Térbeli függvények százai
  
  * Övezet, unió, átfedésvizsgálat, távolság és még továbbiak

* ACID tranzakció integritás
* R-Tree térbeli index
* Többfelhasználós környezet
* Alacsony szintű zárolások
* Replikáció
* Particionálás
* Szerep alapú biztonság
* Táblaterek, sémák

Implementált szabványok
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* OGC szabvány kompatibilitás (SFSQL)

Részletek
--------------------------------------------------------------------------------

**Honlap:** http://postgis.net

**Licenc:** GNU General Public License (GPL) version 2

**Program verzió:** 2.1.3

**Támogatott platformok:** Windows, Linux, Mac

**API Interfészek:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Támogatás:** http://www.osgeo.org/search_profile


Gyorstalpaló
--------------------------------------------------------------------------------
    
* :doc:`Gyorstalpaló dokumentáció <../quickstart/postgis_quickstart>`
