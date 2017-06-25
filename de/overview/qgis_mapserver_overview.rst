:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-QGIS.png
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

QGIS Server
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

QGIS Server stellt einen Web Map Service (WMS) auf Basis von Bibliotheken der Software Quantum GIS (QGIS) zur Verfügung.
Die enge Integration mit QGIS bedeutet, dass visualisierte Karten der Desktop-Anwendung einfach als WMS bereitgestellt werden können, indem die QGIS Projektdatei in das entsprechende Serververzeichnis kopiert werden. Dabei sieht die Karte im Internet genauso aus, wie auf dem Desktop.
QGIS Server läuft in der Regel als CGI/FastCGI Modul innerhalb des Apache Webservers.

.. image:: /images/screenshots/1024x768/qgis-mapserver-screenshot.jpg
  :scale: 50 %
  :alt: project logo
  :align: right


Kernfunktionen
--------------------------------------------------------------------------------

* Web Map Service (WMS) Implementierung
* Integrierte PDF Ausgabe
* Gute Integration mit dem Desktop GIS (QGIS)
* Einfach zu benutzen
* Fortgeschrittene kartographische Darstellung
* Unterstützt Styled Layer Descriptor (SLD)

Implementierte Standards
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.1 und 1.3.0
* OGC Web Feature Service (WFS) 1.0.0 und Transaktionaler WFS (WFS-T) 1.0.0
* OGC Web Coverage Service (WCS)
* OGC Styled Layer Descriptor (SLD) 1.0

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.qgis.org/

**Lizenz:** GPL

**Software Version:** |version-qgis_mapserver|

**Unterstützte Plattformen:** Windows, Linux

**Kommerzieller Support:** http://www.sourcepole.com/

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/qgis_mapserver_quickstart>`
