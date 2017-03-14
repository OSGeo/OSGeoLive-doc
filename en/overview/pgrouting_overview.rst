:Author: Daniel Kastl
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
================================================================================

GIS Tools
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting extends the :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://postgresql.org>`_ geospatial database to provide geospatial routing and other network analysis functionality.

Advantages of the database routing approach are:

* Data and attributes can be modified by many clients, like :doc:`QGIS <qgis_overview>` and :doc:`uDig <udig_overview>` through JDBC, ODBC, or directly using Pl/pgSQL. The clients can either be PCs or mobile devices.
* Data changes can be reflected instantaneously through the routing engine. There is no need for precalculation.
* The "cost" parameter can be dynamically calculated through SQL and its value can come from multiple fields or tables.

pgRouting is available under the GPLv2 license and is supported by a growing community of individuals, businesses and organizations.

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 70 %
  :alt: pgRouting query in pgAdminIII
  :align: right

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

**Website:** http://www.pgrouting.org

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** |version-pgrouting|

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** SQL

**Commercial Support:** http://www.pgrouting.org/support.html

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/pgrouting_quickstart>`

