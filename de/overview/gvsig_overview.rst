:Author: Jorge Sanz
:Author: Manuel Madrid
:Author: Mario Carrera 
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-gvSIG.png
  :alt: project logo
  :align: right
  :target: http://www.gvsig.com/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


gvSIG Desktop
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

gvSIG_ ist ein Geographisches Informationssystem (GIS). Als Desktop-Anwendung bietet es Möglichkeiten 
zur Erfassung, Speicherung, Handhabung, Analyse und Bereitstellung geografischer Informationen,
um damit komplexe Planungs- und Management-Probleme zu lösen. 
gvSIG ist bekannt für seine benutzerfreundliche Benutzeroberfläche und bietet Zugriff auf
alle gängigen Vektor- und Raster-Datenformate. 
Für die Arbeit mit geografischer Information stehen in gvSIG eine breite Palette an Werkzeugen zur Verfügung (Abfrage, 
Layout-Design, Geoprozessierung, Netzwerkanalyse, etc.).
Damit ist gvSIG ein ideales Werkzeug für die Arbeit im Ungang mit Geoinformation.

gvSIG ist bekannt für:

* Integration und Kombination von lokalen und entfernten Daten nach OGC-Standards.
* skalierbar und flexibel und bietet damit eine kontinuierliche Erweiterung
* in über 20 Sprachen verfügbar (Spanisch, Englisch, Deutsch, Französisch, Italienisch,...)
* verfügbar für Windows und Linux (es liegen nicht offizielle Mac OS X Versionen vor).

.. image:: ../../images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Kernelemente
--------------------------------------------------------------------------------

* Bietet allgemeine GIS-Funktionalität, wie das Laden von Daten, Karten-Navigation, Abfrage von
  alphanumerischer Karten-Informationen, Messen von Strecken und Flächen, thematische
  Kartographie, verschiedene Legendentypen, Beschriftungen, Objekt-Auswahl nach verschiedenen 
  Methoden, Tabellenfunktionen zur Erstellung von Statistiken, Verlinkungen, Layout-Manager, 
  Geoprocessing Werkzeuge, CAD- und Raster-Verarbeitungswerkzeuge, etc.

* Interoperabilität: Verarbeitung gängiger Datenformate:

  * Raster: ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, NetCDF,...
  * Vektor & CAD: shapefile, NetCDF, GML, KML, DGN, DXF, DWG
  * Datenbanken: PostGIS, MySQL, Oracle, ArcSDE
  * Dienste: OGC Standards (WMS, WMTS, WFS, WCS), OSM, ECWP, ArcIMS

* Dient als Client zur Lokalisierung von Datenquellen innerhalb einer GDI
  SDI (catalogue and gazeteer services)
  
  * Catalog-Services: Z3950, SRW, CSW (ISO/19115 and ebRIM)
  * Gazetteer-Services: ADL, WFS, WFS-G
  
* Bietet mehr als 300 Geoalgorithmen durch die Integration von SEXTANTE bibliothek
  
* Fortschrittlich durch integrierte CAD Werkzeuge:

  * Vektor: Modifizieren, Erstellen and Löschen von Elementen
  * Administration per Kommandozeile möglich, ähnlich handelsüblicher CAD-Software
  * Werkzeuge wie z.B. Hilfefunktion, Ausrichtung an Gitternetz, Befehlsliste (undo), komplexe Objekt-Selektion
  * Werkzeuge zum Erzeugen von Geometrien, wie z.B. Punkt, Linie, Ellipsen, etc.
  * Werkzeuge zur Veränderung von Objekten, durch z.B. Rotationen, Symmetrie, etc.
  
* Fortschrittlich durch integrierte Rasterwerkzeuge:

  * Georeferenzierung und Umprojizierung
  * Export, Raster-Clip
  * look up tables, Histogramme
  * Filter, Vektorisierung
  * Pyramidengenerierung und Management von ROI (region of interest)

* 3D Ansicht

* weitere Features
  * Scripting Support (Jython)
  * Leistungsstarker Mechanismus zur Umprojizierung durch PROJ4
  * Import/Export von Symbolen
  * Map Sheets Composer
  * Diagramme
  * Erweiterte Werkzeuge zur Symbolerstellung
  * Erweiterte Werkzeuge zur Beschriftungserstellung


Implementierte Standards
--------------------------------------------------------------------------------

Zahlreiche Open Geospatial Consortium (OGC) Standards werden durch das DesktopGIS unterstützt:

* Laden von WMS, WMTS, WFS und WCS Layern
* Export/Import von SLD Legenden
* Export/Import von Web Map Context (WMC)
* Suchfunktion nach Catalog-Diensten durch CSW (ISO/19115 und ebRIM)
* Suchfunktion von Gazetteer, durch Verwendung von WFS-G 

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.gvsig.com/

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** |version-gvsig|

**Unterstützte Plattformen:** Windows, Linux

**Support:** http://www.gvsig.com/en/gvsig-association, http://www.gvsig.com/en/community/mailing-lists


.. _gvSIG: http://www.gvsig.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/gvsig_quickstart>`
