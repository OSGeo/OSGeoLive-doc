:Author: Oliver Tonnhofer
:Author: Dominik Helle
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported License

.. _mapproxy-overview:

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
========

Das "Schweizer Taschenmesser" für WMS und Kachel-Dienste
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapProxy ist das "Schweizer Taschenmesser" für alle WMS- und Kacheldienste. MapProxy speichert, beschleunigt und transformiert bestehende Kartendienste aller Art.

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: center

MapProxy ist weit mehr als nur eine Caching-Lösung. MapProxy bietet umfangreiche und innovative Funktionen an. So beschleunigt MapProxy zum Beispiel WMS-Dienste, ohne dass dabei der WMS-Standard verloren geht. Vorhandene Desktop- und WebGIS Anwendungen können weiter genutzt werden.

MapProxy wird aktiv weiterentwickelt und wird unter `Apache Software Lizenz 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_ veröffentlicht. MapProxy ist auf Unix/Linux/Mac OS X und Windows lauffähig und zeichnet sich hierbei durch seine einfache Installation und Konfiguration aus.

Funktionen von MapProxy
-----------------------

.. image:: ../../images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right
 
Quellen:
  * WMS 1.0.0–1.3.0 (MapServer, GeoServer, etc.)
  * TMS (TileCache, GeoWebcache, etc.)
  * Mapserver und Mapnik (direkt, ohne WMS)
  * jeder TileCache, Google Maps oder Bing kompatible Quellen

Services:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

Kachel-Optionen:
  * einheitliche Bilder werden nur einmalig gespeichert (z.B. Wasser Kacheln)
  * Wasserzeichen zu Kacheln hinzufügen

Optionen für zur Verfügung gestellte Dienste:
  * Quellen können über eine Geometrie beschränkt werden (z.B. durch ein Shapefile)
  * Transparenz zu undurchsichtigen Layern hinzufügen
  * mehrere Quellen zu einem Dienst zusammenfassen
  * in andere Projektionen umtransformieren

WMS Eigenschaften:
  * Layer-Gruppen aus unterschiedlichen Quellen
  * ``GetMap`` Anfrage aus Kacheln erstellen und so eine Unterstützung für freies Zoomen und für jede Projektion ermöglichen
  * bestehende WMS zwischen 10 und 100 mal schneller
  * ``GetLegendGraphic`` Anfragen beantworten
  * ``GetFeatureInfo`` Anfragen zusammenfassen und optional mit XSL transformieren 
  * Projektionen anbieten, die nicht von der ursprünglichen Quelle angeboten werden
  * WMS Versionen aktualisieren und Bild-Formate konvertieren 
	
Weitere Funkionen: 
  * Wasserzeichen und Copyrightzeilen einfügen
  * Unterstützung für Rasterdaten z.B. DEM (keine Bilder)
  * offene Schnittstelle zum Absichern von Diensten oder Layern
  * und vieles mehr...

Implementierte Standards
------------------------

MapProxy unterstützt folgende offene Spezifikationen: 

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays


Demo
----

* Start MapProxy (*Geospatial* --> *Web Services* --> *Start MapProxy*)
* `Im Firefox öffnen <http://localhost:8011/demo>`_

Documentation
-------------

* `MapProxy 1.1.1 Dokumentation <../../mapproxy/index.html>`_


Details
-------

**Website:** http://mapproxy.org/

**Lizenz:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Software Version:** 1.1.1

**Unterstütze Plattform:** Linux, Mac, Windows

**Support:** http://mapproxy.org/support.html


Quickstart
----------
    
* `Quickstart Dokumentation <../quickstart/mapproxy_quickstart.html>`_
