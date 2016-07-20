:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-openjump.png
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

Funktionen (Kerfunktionen und Plugins*)
--------------------------------------------------------------------------------

* Datenformate

    * lesend (dateibasiert): GML, SHP, DXF+, MIF*, CSV+, KML+, OSM* & TIFF, ASCII grid, JPG, PNG, JPEG2000+, MrSID*, ECW+
    * lesend (DB): PostGIS, ArcSDE*, Oracle*, MySQL*, SpatiaLite+, H2 Spatial+, MariaDB+
    * lesend: (OGC Standards): WKT, WMS, KML+, GeoPackage
    * schreibend: GML, SHP, WKT, DXF+, CSV+, PostGIS & JPG, TIFF, ASCII grid*, SVG+
    * beachten Sie, dass die mit * markierten Formate über ein extra Plugin eingebunden werden, die mit + markierten sind dagegen Teil der PLUS Edition.

* Bearbeitung & Vereinigung

    * Zeichnen von Punkten, Linien, Polygonen und Kreisen
    * Hinzufügen, Verschiebenm, Löschen von Stützpunkten
    * Drehen, Skalieren und auto-vervollständigen von Polygonen
    * Verschneiden, Zusammenführen, Vereinfachen von Polygonen und Linien
    * Warping, Werkzeuge zur Qualitätsprüfung
    * Koordinatentransformation

* (Vektoren) Analysen & Abfragen

    * Abfragefunktionen für räumliche Daten und Attribute
    * Analysen: Mittelpunkt, Puffer, Union, Overly, Mittelpunkt, Convex Hull,...
    * Statistiken: Längen- und Flächenberechnung, Attributstatistik, Drucke
    * Editierwerkzeuge: converter, noder, polygonizer, planar graph, topology cleaning in PLUS edition, ...
    * Werkzeuge zur Attributübertragung: join, matching*
    * Rasteranalyse über den SEXTANTE Toolbox als Teil der PLUS Edition

* Anpassungen

    * internationalization (cz, de, en, es, fi, fr, hu, it, ja, pt, ta, zh)
    * Bereitstellung einer API, Skripting über BeanShell und Java Python/Ython
    * (Java) Plugin-System
   

Implementierte Standards
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards supported: GML2, SFS, WMS, KML, SLD, GeoPackage (lesend);

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.openjump.org

**Lizenz:** GPL

**Software Version:** |version-openjump|

**Unterstützte Plattformen:** Windows, Linux, Mac, Unix

**Community Support:** http://www.openjump.org/support.html

**Komerzieller Support:** http://ojwiki.soldin.de/index.php?title=Professional_Support_Page

**Download:** http://sourceforge.net/projects/jump-pilot/files/ 

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/openjump_quickstart>`