:Author: OSGeo-Live
:Version: osgeo-live4.0
:License: Creative Commons


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _tinyows-overview:

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://tinyows.refractions.net/

TinyOWS
=======

Web Services
~~~~~~~~~~~~

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

TinyOWS spatially enables the popular PostgreSQL object-relational database, allowing it to be used as a back-end database for geographic information systems (GIS) and web-mapping applications in the same manner as Oracle Spatial enables the Oracle database.

TinyOWS is stable, fast, standards compliant, with hundreds of spatial functions and is currently the most widely used Open Source spatial database. TinyOWS is used by diverse organisations from around the world, including risk adverse government agencies and organisations storing terrabytes of data serving millions of web requests per day.

Database administration is available via pgAdmin, phpPgAdmin, among others. Importing and exporting data is provided by various converter tools (shp2pgsql, pgsql2shp, ogr2ogr, dxf2tinyows). And there are numerous desktop and browser GIS clients for viewing TinyOWS data.

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

Core Features
-------------

* Hundreds of spatial functions
  
  * Buffers, unions, overlays, distance and more

* ACID transactional integrity
* R-Tree spatial index
* Multi-user support
* Row-level locking
* Replication
* Partitioning
* Role-based security
* Table-spaces, schemas

Implemented Standards
---------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards compliant (SFSQL)

Details
-------

**Website:** http://tinyows.refractions.net/

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 1.5

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Support:** http://www.osgeo.org/search_profile


Quickstart
----------
    
* `Quickstart documentation <../quickstart/tinyows_quickstart.html>`_
