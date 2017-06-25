:Author: OSGeo-Live
:Author: Frank Gasdorf
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-TinyOWS.png
  :alt: Projekt Logo
  :align: right
  :target: http://mapserver.org/tinyows/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

TinyOWS
================================================================================

Web Feature Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TinyOWS ist ein hochperformanter, leichtgewichtiger und einfach einzurichtender Transaktionaler Web Feature Service (WFS-T), der CGI und FastCGI Schnittstellen unterstützt und :doc:`PostGIS <postgis_overview>` für die Datenspeicherung nutzt.

.. image:: /images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

TinyOWS wird häufig in Verbindung mit einem :doc:`MapServer <mapserver_overview>` eingesetzt, um Daten über WFS-T und schnelle WFS Dienste für :doc:`QGIS <qgis_overview>` und/oder :doc:`OpenLayers <openlayers_overview>` Clients bereitzustellen. TinyOWS ist produktiv in Organsationen und Regierungsbehörden weltweit im Einsatz. 
WFS 1.0 und WFS 1.1 sind präzise implementiert, alle OGC CITE Tests - ca.  1000 - wurden erfolgreich durchlaufen.

Kernfunktionen
--------------------------------------------------------------------------------

* Transaktionaler Web Feature Service (WFS-T)
* CGI und FastCGI Schittstellen
* PostGIS Anbindung
* GML 2.1.2, 3.1.1 und GeoJson 1.0 Rückgabeformate
* kann mit MapServer Konfigurationsdatei eingerichtet werden, so dass für beide Applikationen nur eine Konfigurationsdatei erforderlich ist

Umgesetzte Standards
--------------------------------------------------------------------------------
* WFS 1.0 und WFS 1.1: Basisprofil und Transaktional
* FE 1.0.0 und FE 1.1.0
* GML 2.1.2 und 3.1.1 Simple Profile (SF-0)

Details
--------------------------------------------------------------------------------

**Website:** http://mapserver.org/tinyows/

**Lizenz:** MIT

**Software Version:** |version-tinyows|

**Unterstützte Plattformen:** Linux, Unix, Mac, Windows

**API Schnittstellen:** CGI/FastCGI

**Support:** http://lists.osgeo.org/mailman/listinfo/mapserver-users


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart Dokumentation <../quickstart/tinyows_quickstart>`
