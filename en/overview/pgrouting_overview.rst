:Author: Daniel Kastl
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
================================================================================

GIS Tools
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting extends the :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://postgresql.org>`_ geospatial database to provide geospatial routing and other network analysis functionality.

Advantages of the database routing approach are:

* Data and attributes can be modified by many clients, like :doc:`Quantum GIS <qgis_overview>` and :doc:`uDig <udig_overview>` through JDBC, ODBC, or directly using Pl/pgSQL. The clients can either be PCs or mobile devices.
* Data changes can be reflected instantaneously through the routing engine. There is no need for precalculation.
* The "cost" parameter can be dynamically calculated through SQL and its value can come from multiple fields or tables.

pgRouting is available under the GPLv2 license and is supported by a growing community of individuals, businesses and organizations.

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Core Features
--------------------------------------------------------------------------------

pgRouting provides functions for:

* All Pairs Shortest Path, Johnson’s Algorithm :sup:`[1]`
* All Pairs Shortest Path, Floyd-Warshall Algorithm :sup:`[1]`
* Shortest Path A*
* Bi-directional Dijkstra Shortest Path :sup:`[1]`
* Bi-directional A* Shortest Path :sup:`[1]`
* Shortest Path Dijkstra
* Driving Distance
* K-Shortest Path, Multiple Alternative Paths :sup:`[1]`
* K-Dijkstra, One to Many Shortest Path :sup:`[1]`
* Traveling Sales Person
* Turn Restriction Shortest Path (TRSP) :sup:`[1]`
* Shortest Path Shooting Star :sup:`[2]`

Learn more about using pgRouting in your application by reading the `documentation <http://docs.pgrouting.org>`_.

| :sup:`[1]` **New** in pgRouting 2.0
| :sup:`[2]` Discontinued in pgRouting 2.0


.. Implemented Standards
   ---------------------

.. * OGC standards compliant

Details
--------------------------------------------------------------------------------

**Website:** http://www.pgrouting.org

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 2.0

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** SQL

**Commercial Support:** http://www.pgrouting.org/support.html

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/pgrouting_quickstart>`


