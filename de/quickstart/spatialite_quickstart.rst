:Author: OSGeo-Live
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _spatialite-quickstart:
 
.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
SpatiaLite Quickstart 
********************************************************************************

SpatiaLite ist eine SQLite-Datenbank-Engine mit zusätzlichen räumlichen Funktionen.

Dieser Quickstart beschreibt, wie man eine Datenbank mit Hilfe der Kommandozeile oder mit der graphischen Anwendung öffnet.


spatialite Ausführen
================================================================================

* Öffnen Sie eine Konsole und öffnen Sie eine Beispiel-Datenbank mit SpatiaLite::

   spatialite /home/user/data/spatialite/regions.sqlite
   select r.NOME_REG, a.Nome from Aeroporti a, reg2008_s r where CONTAINS( r.Geometry, a.Geometry ) order by r.NOME_REG;


Erstellen Sie eine neue Datenbank mit spatialite-gui
================================================================================

* Starten Sie spatialite-gui
* Wählen Sie :menuselection:`File --> Creating a new SQLite DB`


spatialite-gis Ausführen
================================================================================

* Führen Sie spatialite-gis aus
* Verbinden Sie mit /home/user/data/spatialite/regions.sqlite

Sie sollten eine Reihe von Flughäfen in Italien sehen.


Zum Ausprobieren
================================================================================

Hier sind einige zusätzliche Herausforderungen für Sie zum Ausprobieren:

* Überprüfen Sie Geometrien mit spatialite-gui
* Öffnen und bearbeiten Sie SpatiaLite Layer in QGIS

Wie geht es weiter?
================================================================================

Wenn Sie mehr über SpatiaLite erfahren möchten, ist die `Documentation und Tutorials`_ Seite ein guter Ausgangspunkt.

.. _`Documentation und Tutorials`: http://www.gaia-gis.it/spatialite/docs.html
