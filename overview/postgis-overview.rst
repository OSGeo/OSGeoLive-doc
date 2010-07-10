.. Writing Tip:
  Writing tips describe what content should be in the following section.

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
    images/project_logos/<filename>

.. image:: images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right

.. Writing Tip: Name of application

PostGIS
=======

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

Spatial Database
~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.

PostGIS “spatially enables” the popular PostgreSQL object-relational database, allowing it to be used as a back-end database for geographic information systems (GIS) and web-mapping applications in the same manner as Oracle Spatial enables the Oracle database.

PostGIS is stable, fast, standards compliant, with hundreds of spatial functions and is currently the most widely used Open Source spatial database. PostGIS is used by diverse organisations from around the world, including risk adverse government agencies and organisations storing terrabytes of data serving millions of web requests per day.

Database administration is available via pgAdmin, phpPgAdmin, among others. Importing and exporting data is provided by various converter tools (shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis). And there are numerous desktop and browser GIS clients for viewing PostGIS data.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: images/screenshots/800x600/pgadmin.gif
  :scale: 50%
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

.. Writing Tip:
  Optional: A second screenshot can sometimes be added here
  if there is sufficient room.
  .. image:: images/screenshots/800x600/pgadmin.gif
    :scale: 50%
    :alt: project logo
    :align: right

Implemented Standards
---------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards compliant (SFSQL)

Details
-------

**Website:** http://postgis.refractions.net/ 

**Licence:** GPL

**Software Version:** 1.5

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** SQL

.. Writing Tip:
  Link to jump page which lists commercial support for the application.

**Commercial Support:** http://www.osgeo.org/search_profile

**Maturity:**

.. Writing Tip:
  Maturity rating is defined at:
  http://wiki.osgeo.org/wiki/Marketing_Artefacts#Maturity_Rating
  Add the correct image, and explaining text as described below:
  "5 stars"
    Not used yet.
  "4 stars (mature software)" -
    Project has passed osgeo incubation as per:
    http://www.osgeo.org/incubator/process/project_graduation_checklist.html
  "3 stars (established software)"
    Project has Stable Software, a Stable community, is deployed in
    production systems, and is ready to pass criteria to enter incubation,
    as per: http://www.osgeo.org/incubator/process/evaluation.html
  "2 stars (stable software)"
    Project has Stable Software. Project produces periodic releases of
    stable software which is used in production systems. 
  "1 star (beta software)"
    Project has Beta software, which is feature complete, but has not been
    widely deployed or widely tested.

.. image:: images/logos/3star.gif
  :alt: project logo
  :align: left
  :scale: 100%

. (stable software)

