:Author: OSGeo-Live
:Version: osgeo-live4.0
:License: Creative Commons

.. _saga-overview:

.. image:: ../../images/project_logos/logo-saga.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.saga-gis.org


SAGA
====

Desktop GIS
~~~~~~~~~~~

SAGA (System für automatisierte Geowissenschaftliche Analysen) ist ein Open Source Geoinformationssystem (GIS), das zum
Bearbeiten und Erfassen von räumlichen Daten verwendet wird. Das Programm beinhaltet zahlreiche Module zur Analyse von Vektordaten (Punkten, Linien, Flächen), Tabellen, Grids und Bilddateien. Unter anderem beinhaltet SAGA Module zur Geostatistic, Bildklassifizierung, 
Projektionen, Simulationen von dynamischen Prozessen (Hydrologie, Landschaftsentwicklung) und Geländenanlysen.
Auf die Funktionalität kann über eine graphische Oberfläche, über die Kommandozeile oder über die C++ API zugegriffen werden.

SAGA wird seit 2001 entwickelt. Dabei findet der Großteil der Entwicklung am 
Institut für Geographie an der Universität Hamburg statt und wird von einer wachsenden weltweiten Community unterstützt.

.. image:: ../../images/screenshots/1024x768/saga_overview.png
  :scale: 40%
  :alt: screenshot
  :align: right

Kernfunktionen
--------------

* Zugriff auf zahlreiche wissenschaftliche Module über ein graphische Oberfläche oder über die Kommandozeile

 * Import/Export von verschiedenen Dateiformaten
 * Umprojektion/Resampling von Daten
 * Manipulation von Vektordaten (Zusammenfassen/ Verschneidung/ Attribute)
 * Manipulation von Punktwolken von Lidar-Daten
 * Rasterdaten: Interpolation, Kostenanalysen, ...
 * Bildanalysen: Filter, Kantendetektion, Cluster Analysen, Segmentierung
 * Digitale Geländeanalysen: Generierung von geomorphometrischen Indices, channel networks, Profile, Konturlinien, ...
 * Geostatistiken: Modules zur korrigierten Stichprobenvarianz und Kriging

* Performate Benutzeroberfläche zur Verwaltung und Visualisierung der Daten

 * 3D Visualisierung

* einfache C++ API zur Erzeugung neuer Module
* Skripting über die Kommandozeile, Binding über Python
* SAGA kann von der statistischen Sprache R das RSAGA Modul angesprochen werden

Details
-------

**Webseite:** http://www.saga-gis.org

**Lizenz:** LGPL v2.1 (api); GPLv2 (GUI und Module)

**Software Version:** 2.0.6

**Unterstützte Betriebssysteme:** Linux, Windows

**API Schnittstellen:** C++

**Support:** http://www.saga-gis.org


Schnellstart
------------

* `Schnellstart Dokumentation <../quickstart/saga_quickstart.html>`_


