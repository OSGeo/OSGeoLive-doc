:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons

.. _pgrouting-overview:

.. image:: images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: pgRouting Logo
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
=========

GIS Werkzeuge
~~~~~~~~~~~~~

pgRouting erweitert eine "PostGIS <postgis_overview.html>`_ /` PostgreSQL <http://www.postgresql.org>`_ Geo-Datenbank um Funktionen für "Kürzeste-Wege" Berechnung (Routing).

Vorteile des Datenbank-Routing Konzepts sind:

* Daten und Attribute können  mittels JDBC, ODBC oder direkt durch Pl/pgSQL von zahlreichen Anwendungen modifiziert werden, wie etwa von `Quantum GIS <qgis_overview.html>`_` und uDig <udig_overview.html>`_. Solche Anwendungen können sowohl auf PCs als auch auf mobilen Geräten laufen. 
* Änderungen an den Daten wirken sich unmittelbar auf das Routingergebnis aus. Es besteht keine Notwendigkeit, Daten vorzuberechnen. 
* Der "Kosten" Parameter kann dynamisch mittels SQL berechnet werden und aus verschiedenen Attributen aus unterschiedlichen Tabellen zusammengesetzt sein.


.. image:: images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting Abfrage in pgAdmin III
  :align: right

Kernfunktionen
--------------

pgRouting stellt Funktionen zur Verfügung für:

* "Kürzeste-Wege" Berechnung Dikstra: Routing Algorithmus ohne heuristische Komponente
* "Kürzeste-Wege" Berechnung A-Star: Routing für große Netzwerke (mit heuristischer Komponente)
* "Kürzeste-Wege" Berechnung Shooting-Star: Routing mit Unterstützung von Abbiegebeziehungen (mit heuristischer Komponente)
* Problem des Handlungsreisenden (Traveling Salesperson Problem, TSP)
* Einzugsbereichberechnung (Isolinien)

.. Implementierte Standards
   ---------------------

.. * OGC standardkonform

Details
-------

**Webseite:** http://www.pgrouting.org

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** 1.03 (svn)

**Unterstützte Betriebssysteme:** Linux, Windows, Mac

**API Schnittstellen:** SQL

**Kommerzieller Support:** http://www.pgrouting.org

Schnellstart
------------

* `Schnellstart Dokumentation <../quickstart/pgrouting_quickstart.html>`_


