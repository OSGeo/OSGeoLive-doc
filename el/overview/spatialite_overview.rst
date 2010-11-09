:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons

.. _spatialite-overview:

.. image:: images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/spatialite/


SpatiaLite
==========

Χωρική Βάση Δεδομένων
~~~~~~~~~~~~~~~~

SpatiaLite is an SQLite_ database engine with spatial functions added. 

SQLite is a popular DBMS, simple, robust, easy to use and really lightweight. Each SQLite database is simply a file; you can freely copy it, compress it, send it on a LAN or WEB with no complication at all.

The files are also portable; the same database file will work on Windows, Linux, MacOs etc.

.. _SQLite: http://www.sqlite.org/

.. image:: images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Βασικά Χαρακτηριστικά
-------------

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
* You can then perform standard SQL queries on external CSV/TxtTab files, with no need for importing or converting them
* The GUI tool supports all this, in an user friendly way


Λεπτομέρειες
-------

**Website:** http://www.gaia-gis.it/spatialite/

**Licence:** MPL v1.1 and GPL v3

**Software Version:** 2.3.1 / 2.4 beta

**Supported Platforms:** Linux, Mac, Windows

**Προγραμματιστική διεπαφή (API):** C++


Γρήγορη εκκίνηση
----------

* `Quickstart documentation <../quickstart/spatialite_quickstart.html>`_


