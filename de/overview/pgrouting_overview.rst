:Author: Daniel Kastl
:Reviewer: 
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-pgRouting.png
  :alt: pgRouting Logo
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
================================================================================

GIS Tools
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting erweitert eine :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://postgresql.org>`_ Geo-Datenbank um Funktionen für “Kürzeste-Wege” Berechnung (Routing) und andere netzorientierte Algorithmen.

Vorteile des Datenbank-Routing Konzepts sind:

* Daten und Attribute können mittels JDBC, ODBC oder direkt durch Pl/pgSQL von zahlreichen Anwendungen modifiziert werden, wie etwa von :doc:`Quantum GIS <qgis_overview>` und :doc:`uDig <udig_overview>`. Solche Anwendungen können sowohl auf PCs als auch auf mobilen Geräten laufen.
* Änderungen an den Daten wirken sich unmittelbar auf das Routingergebnis aus. Es besteht keine Notwendigkeit, Daten vorzuberechnen.
* Der “Kosten” Parameter kann dynamisch mittels SQL berechnet werden und aus verschiedenen Attributen aus unterschiedlichen Tabellen zusammengesetzt sein.

pgRouting steht unter GPLv2 Lizens und wird von einer wachsenden Zahl von Nutzern, Organisationen und Unternehmen unterstützt.

.. image:: /images/screenshots/800x600/pgrouting.png
  :scale: 70 %
  :alt: pgRouting Abfrage in pgAdminIII
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

pgRouting stellt Funktionen zur Verfügung für:

* All Pairs Shortest Path, Johnson’s Algorithm
* All Pairs Shortest Path, Floyd-Warshall Algorithm
* “Kürzeste-Wege” Berechnung mit A* Algorithmus
* Bi-directional Dijkstra Shortest Path
* Bi-directional A* Shortest Path
* “Kürzeste-Wege” Berechnung mit Dijkstra Algorithmus
* Einzugsbereichberechnung (Isolinien)
* K-Shortest Path, Multiple Alternative Paths
* K-Dijkstra, One to Many Shortest Path
* Problem des Handlungsreisenden (Traveling Salesperson Problem, TSP)
* Turn Restriction Shortest Path (TRSP)

Weitere Details zu pgRouting finden sich in der `documentation <http://docs.pgrouting.org>`_.


.. Implemented Standards
   ---------------------

.. * OGC standards compliant

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.pgrouting.org

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** |version-pgrouting|

**Unterstützte Plattformen:** Linux, Windows, Mac

**API Schnittstellen:** SQL

**Kommerzieller Support:** http://www.pgrouting.org/support.html

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/pgrouting_quickstart>`
