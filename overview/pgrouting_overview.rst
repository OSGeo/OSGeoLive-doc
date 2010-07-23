.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _pgrouting-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/<filename>

.. image:: images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

.. Writing Tip: Name of application

pgRouting
=========

.. Writing Tip:
  Application Category Description:
  * Spatial Database
  * Web Service
  * Metadata Web Service
  * Desktop GIS
  * Browser GIS client
  * Business Intelligence
  * GIS Tools
  * ...

GIS Tools
~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  
pgRouting is an extension of PostGIS and adds routing functionality to PostGIS/PostgreSQL. Advantages of the database routing approach are:

* Accessible by multiple clients through JDBC, ODBC, or directly using Pl/pgSQL. The clients can either be PCs or mobile devices.
* Uses PostGIS for its geographic data format, which in turn uses OGC's data format Well Konwn Text (WKT) and Well Known Binary (WKB). 
* Open Source software like qGIS and uDig can modify the data/attributes,
* Data changes can be reflected instantaneously through the routing engine. There is no need for precalculation.
* The "cost" parameter can be dynamically calculated through SQL and its value can come from multiple fields or tables.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: images/screenshots/800x600/pgrouting.png
  :scale: 50 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Core Features
-------------

pgRouting provides functions for:

* Shortest Path Dikstra: routing algorithm without heuristics
* Shortest Path A-Star: routing for large datasets (with heuristics)
* Shortest Path Shooting-Star: routing with turn restrictions (with heuristics)
* Traveling Salesperson Problem (TSP)
* Driving Distance calculation (Isolines)

.. Writing Tip:
  Optional: A second screenshot can sometimes be added here
  if there is sufficient room.
  .. image:: images/screenshots/800x600/pgadmin.gif
    :scale: 50 %
    :alt: project logo
    :align: right

Implemented Standards
---------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards compliant

Details
-------

**Website:** http://www.pgrouting.org

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 1.03 (svn)

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Commercial Support:** http://www.pgrouting.org

.. Writing Tip:
  Later, we may introduce a Maturity Rating, but currently the format, and
  whether we go ahead with such a rating is still under discussion.
  http://wiki.osgeo.org/wiki/Marketing_Artefacts#Maturity_Rating
