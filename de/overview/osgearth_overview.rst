:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _osgearth-overview:

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
========

Terrain Rendering-Bibliothek
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

osgEarth ist eine Bibliothek für das Echtzeit-Rendering von Terrains für OpenSceneGraph_ (OSG), einer leistungsfähigen quelloffenen 3D-Grafik Bibliothek.
In einer einfachen XML-Datei können Raster-, Höhen- und Vektrodaten konfiguriert und in eine beliebige OSG-Applikation eingebunden werden.
osgEarth unterstützt eine Vielzahl an Datenquellen und wird mit zahlreichen Beispielapplikationen ausgeliefert, um einen schnellen und einfachen Einstieg zu ermöglichen. 

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: ../../images/screenshots/1024x768/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Kernfunktionen
--------------

osgEarth ermöglicht das einfache Kreieren von skalierbaren Terrainmodellen:

* Kreierung von Terrainmodellen - entweder offline, oder dynamisch zur Laufzeit
* Laden von weltweiten Terrains ohne eine Codezeile zu schreiben
* Layer mit hochauflösende Insets basierend auf Rasterdaten
* Kombination von Luftbildern, Höhen- und Vektordaten in Echtzeit
* Unterstützt Caching von Kartenkacheln zur Leistungsmaximierung
* Konfigurierbare Layer-Opazität für Multi-Textur Effekte

osgEarth bietet noch mehr als das Rendern von Terrains:

* Darstellung von Vektordaten (GIS) auf dem Terrain
* Umprojizieren von Daten zwischen verschiedenen Koordinatensystemen
* Platzierung von externen 3D-Modellen auf dem Terrain mit lat/long Koordinaten 
* Schnelle Schnitt-Tests
* Einbindung neuer Daten in existierende VPB-Datenbanken (ohne Rebuild) 
* Direkter Zugriff auf Terrain Kacheln für nicht-visuelle Prozesse

Unterstützte Daten:

* GeoTIFF Rasterdaten und digitale Höhenmodelle (DEM) (und viele weitere Formate) 
* Vektordaten wie zum Beispiel ESRI Shapefiles 
* OGC-konforme Web-Dienste und -Formate (z.B. WMS_) 
* Von MapServer_ oder `ESRI ArcGIS Server`_ produzierte GIS Layer
* Online Karten wie OpenStreetMap_, `ArcGIS Online`_, oder `NASA OnEarth`_

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ESRI ArcGIS Server`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


Details
-------

**Website:** http://osgearth.org/

**Licence:** GNU Lesser General Public License (LGPL) 

**Software Version:** 2.0

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** C++

**Commercial Support:** http://osgearth.org/#ProfessionalServices


Quickstart
----------

* `Quickstart (English) <../../en/quickstart/osgearth_quickstart.html>`_


