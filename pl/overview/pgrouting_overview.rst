:Author: Daniel Kastl
:Translator: Milena Nowotarska, OSGeo
:Reviewer: Milena Nowotarska, OSGeo
:Version: osgeo-live6.0
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

pgRouting rozszerza geoprzestrzenną bazę danych :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_  o funkcjonalność geoprzestrzennego trasowania.

Zalety bazodanowego podejścia do trasowania:

* Dane i atrybuty mogą być modyfikowane poprzez wielu klientów, takich jak :doc:`Quantum GIS <qgis_overview>` i :doc:`uDig <udig_overview>` przez JDBC, ODBC, albo bezpośrednio z użyciem Pl/pgSQL. Klienci mogą być na komputerach osobistych lub urządzeniach mobilnych.
* Zmiany danych mogą być natychmiast odzwierciedlone w trasowaniu. Nie map potrzeby wstępnych kalkulacji.
* Parametr "kosztu" może być dynamicznie obliczany za pomocą SQL a jego wartość może wynikać z wielu pól lub tabel.

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

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
--------------------------------------------------------------------------------

**Strona internetowa:** http://www.pgrouting.org

**Licencja:** Powszechna Licencja Publiczna GNU (GPL) wersja 2

**Wersja programu:** 1.05

**Systemy operacyjne:** Linux, Windows, Mac

**Interfejsy API:** SQL

**Wsparcie komercyjne:** http://www.pgrouting.org

Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/pgrouting_quickstart>`


