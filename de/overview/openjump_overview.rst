:Author: OSGeo-Live
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _openjump-overview:

.. image:: ../../images/project_logos/logo-openjump.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.openjump.org

OpenJUMP GIS
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
OpenJUMP ist ein einfach zu handhabendes und leistungsstarkes DesktopGIS, das es ermöglicht räumliche Daten
zu bearbeiten, zu analysieren, zu vereinigen, zu speichern und anzuzeigen.
Es ist außerdem sehr gut zur schnellen Entwicklung von Prototypen mit angepassten GIS Funktionen geeignet.

.. image:: ../../images/screenshots/1024x768/openjump-screenshot.png
  :scale: 50 %
  :alt: project screenshots
  :align: center

Kernfunktionen
--------------------------------------------------------------------------------

* Datenformate

    * lesend (dateibasiert): GML, SHP, DXF*, JML, MIF* & TIFF, JPG, MrSID, ECW
    * lesend (DB): PostGIS, ArcSDE*, Oracle* und MySQL*
    * schreibend: GML, SHP, DXF*, PostGIS*, JML & JPG
    * unterstützt: OGC WMS & WFS (-T), GML 2, SLD
    * beachten Sie, dass die mit * markierten Formate über ein extra Plugin eingebunden werden

* Bearbeitung & Vereinigung

    * Zeichnen von Punkten, Linien, Polygonen und Kreisen
    * Hinzufügen, Verschiebenm, Löschen von Stützpunkten
    * Drehen, Skalieren und auto-vervollständigen von Polygonen
    * Verschneiden, Zusammenführen, Vereinfachen von Polygonen und Linien
    * Warping, Werkzeuge zur Qualitätsprüfung*

* (Vektoren) Analysen & Abfragen

    * Abfragefunktionen für räumliche Daten und Attribute
    * Längen- und Flächenberechnung, Mittelpunkt, Puffer, Convex Hull,...
    * Topologie Werkzeuge: line noder, polygonizer, planar graph,...
    * Werkzeuge zur Attributübertragung (1:1 Transfer oder n:1 Transfer)
    * Rasteranalyse über den SEXTANTE Connector

* Anpassungen

    * Bereitstellung einer API, Skripting über BeanShell und Java Python
    * (Java) Plugin-System
   

Implementierte Standards
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards supported: GML 2, SFS, WMS, WFS (Plugin), WFS-T (Plugin), SLD

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.openjump.org

**Lizenz:** GPL

**Software Version:** 1.4.0.1

**Unterstützte Plattformen:** Windows, Linux, Mac, Unix

**Community Support:** http://www.openjump.org/support.html

**Kommerzieller Support:** http://sourceforge.net/apps/mediawiki/jump-pilot/index.php?title=Professional_Support_Page

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/openjump_quickstart>`
