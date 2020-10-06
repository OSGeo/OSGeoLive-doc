:Author: Daniel Kastl
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_pgrouting@
@OSGEO_KIND_pgrouting@


@NAME_pgrouting@
================================================================================

GIS Tools
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting extends the :doc:`PostGIS <postgis_overview>`/`PostgreSQL <https://www.postgresql.org>`_ geospatial database to provide geospatial routing and other network analysis functionality.

Advantages of the database routing approach are:

* Data and attributes can be modified by many clients, like :doc:`QGIS <qgis_overview>` and :doc:`uDig <udig_overview>` through JDBC, ODBC, or directly using Pl/pgSQL. The clients can either be PCs or mobile devices.
* Data changes can be reflected instantaneously through the routing engine. There is no need for precalculation.
* The "cost" parameter can be dynamically calculated through SQL and its value can come from multiple fields or tables.

pgRouting is available under the GPLv2 license and is supported by a growing community of individuals, businesses and organizations.

@SCREENSHOT_pgrouting@

Core Features
--------------------------------------------------------------------------------

pgRouting provides functions for:

* All Pairs Shortest Path, Johnson’s Algorithm
* All Pairs Shortest Path, Floyd-Warshall Algorithm
* Shortest Path A*
* Bi-directional Dijkstra Shortest Path
* Bi-directional A* Shortest Path
* Shortest Path Dijkstra
* Driving Distance
* K-Shortest Path, Multiple Alternative Paths
* K-Dijkstra, One to Many Shortest Path
* Traveling Sales Person
* Turn Restriction Shortest Path (TRSP)

Learn more about using pgRouting in your application by reading the `documentation <http://docs.pgrouting.org>`_.


.. Implemented Standards
   ---------------------

.. * OGC standards compliant

Details
--------------------------------------------------------------------------------

**Website:** @WEB_pgrouting@

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** |version-pgrouting|

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** SQL

**Commercial Support:** https://pgrouting.org/support.html


@VMDK_pgrouting@
@QUICKSTART_pgrouting@

.. presentation-note
    pgRouting extends the PostGIS database to provide geospatial routing functionality so you can apply queries like finding the shortest path between points from within the database, thus simplifying both routing functionality and maintenance of data.
