:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

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
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* Datenformate

    * lesend (dateibasiert): GML, SHP, DXF*, MIF*, CSV* & TIFF, JPG, PNG, JPEG2000*, MrSID*, ECW*
    * lesend (DB): PostGIS, ArcSDE*, Oracle*, MySQL* und SpatiaLite*
    * lesend: (OGC Standards) : WKT, WMS
    * schreibend: GML, SHP, WKT, DXF*, PostGIS* & JPG, TIFF und SVG*
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

    * internationalization (cz, de, en, es, fi, fr, hu, it, ja, pt, ta, zh)
    * Bereitstellung einer API, Skripting über BeanShell und Java Python
    * (Java) Plugin-System
   

Implementierte Standards
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards supported: GML2, SFS, WMS und SLD; (WFS für :doc:`deegree <deegree_overview>`)

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.openjump.org

**Lizenz:** GPL

**Software Version:** 1.5.2 (Core Edition)

**Unterstützte Plattformen:** Windows, Linux, Mac, Unix

**Community Support:** http://www.openjump.org/support.html

**Komerzieller Support:** http://sourceforge.net/apps/mediawiki/jump-pilot/index.php?title=Professional_Support_Page

**Download:** http://sourceforge.net/projects/jump-pilot/files/ 

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/openjump_quickstart>`
