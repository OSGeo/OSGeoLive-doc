:Author: Daniel Kastl
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
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

pgRouting extends the :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ geospatial database to provide geospatial routing functionality.

Advantages of the database routing approach are:

* Data and attributes can be modified by many clients, like :doc:`Quantum GIS <qgis_overview>` and :doc:`uDig <udig_overview>` through JDBC, ODBC, or directly using Pl/pgSQL. The clients can either be PCs or mobile devices.
* Data changes can be reflected instantaneously through the routing engine. There is no need for precalculation.
* The "cost" parameter can be dynamically calculated through SQL and its value can come from multiple fields or tables.

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Core Features
--------------------------------------------------------------------------------

pgRouting provides functions for:

* Shortest Path Dikstra: routing algorithm without heuristics
* Shortest Path A-Star: routing for large datasets (with heuristics)
* Shortest Path Shooting-Star: routing with turn restrictions (with heuristics)
* Traveling Salesperson Problem (TSP)
* Driving Distance calculation (Isolines)

.. Implemented Standards
   ---------------------

.. * OGC standards compliant

Details
--------------------------------------------------------------------------------

**Website:** http://www.pgrouting.org

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 1.05

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** SQL

**Commercial Support:** http://www.pgrouting.org

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/pgrouting_quickstart>`


