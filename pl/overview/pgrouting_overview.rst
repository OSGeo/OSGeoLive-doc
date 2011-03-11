:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons

.. _pgrouting-overview:

.. image:: ../../images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
=========

GIS Tools
~~~~~~~~~

pgRouting extends the `PostGIS <postgis_overview.html>`_/`PostgreSQL <http://www.postgresql.org>`_ geospatial database to provide geospatial routing functionality.

Advantages of the database routing approach are:

* Data and attributes can be modified by many clients, like `Quantum GIS <qgis_overview.html>`_ and `uDig <udig_overview.html>`_ through JDBC, ODBC, or directly using Pl/pgSQL. The clients can either be PCs or mobile devices.
* Data changes can be reflected instantaneously through the routing engine. There is no need for precalculation.
* The "cost" parameter can be dynamically calculated through SQL and its value can come from multiple fields or tables.

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Główne funkcje
-------------

pgRouting provides functions for:

* Shortest Path Dikstra: routing algorithm without heuristics
* Shortest Path A-Star: routing for large datasets (with heuristics)
* Shortest Path Shooting-Star: routing with turn restrictions (with heuristics)
* Traveling Salesperson Problem (TSP)
* Driving Distance calculation (Isolines)

.. Zaimplementowane standardy
   ---------------------

.. * Zgodny ze standardami OGC

Szczegóły
-------

**Strona internetowa:** http://www.pgrouting.org

**Licencja:** Powszechna Licencja Publiczna GNU (GPL) wersja 2

**Wersja programu:** 1.05

**Systemy operacyjne:** Linux, Windows, Mac

**Interfejsy API:** SQL

**Wsparcie komercyjne:** http://www.pgrouting.org

Wprowadzenie
----------

* `Przejdź do wprowadzenia <../quickstart/pgrouting_quickstart.html>`_


