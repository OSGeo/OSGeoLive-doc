:Author: Dominik Helle
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-MapGuideOS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapguide.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapGuide Open Source
================================================================================

Web Service
--------------------------------------------------------------------------------

`MapGuide Open Source <http://mapguide.osgeo.org/>`_  ist eine webbasierte Plattform die es dem Benutzer ermöglicht Kartenanwendungen und Kartendienste zu entwickeln. MapGuide beinhaltet eine interaktive Kartenanwendung mit der Objekte bearbeitet und analysiert werden können. Außerdem ist das Anzeigen von Kartenhinweisen und das Durchführen von Operationen z.B. filtern oder messen, möglich.

Zum Verwalten des Inhalts verfügt MapGuide über eine XML-Datenbank. Maestro ermöglicht dem Benutzer die XML-Datenbank zu bearbeiten und Webseiten zu erstellen. Dies alles ohne das eine einzige Zeile Code geschrieben werden muss. MapGuide unterstützt viele populäre GIS-Formate, Datenbanken und Standards.

MapGuide ist unter Linux oder Windows lauffähig und unterstützt den Apache- und IIS-Webserver. Es stellt Schnittstellen in PHP, .NET, Java oder Javascript für die Entwicklung zur Verfügung. MapGuide Open Source steht unter der LGPL Lizenz.

.. image:: ../../images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50%
  :alt: screenshot
  :align: right


.. note:: Aufgrund von Platzbeschränkungen ist MapGuide derzeit nicht auf der DVD installiert.

.. commented out as manual install doesn't work right now: Zum Installieren der Softwäre öffnen Sie bitte ein Terminal und rufen das Installationsskript auf ``cd gisvm/bin; sudo ./install_mapguide.sh``

Kernfunktionen
--------------------------------------------------------------------------------

**Interaktive Kartenansicht**

* dynamische browser-basierte Anwendung
* Objekte und Eigenschaften auswählen
* Puffer und Abfragen erstellen
* Daten drucken und plotten

**Gute kartographische Ergebnisse**

* Maßstabsabhängige Details
* regelbasierte thematische Stilisierung
* Bilder mit Kantenglättung 
* Echtfarben Unterstützung

**Eingebaute Datenbank für besser Handlichkeit**

* Definitionen von Karten, Layer und Datenverbindungen werden hierarchisch in XML Dokumenten gespeichert
* Datenquellen und Layer werden einmalig definiert und können in unterschiedlichen Karten verwenden werden
* Zugriffsverwaltung mit vererbbaren Rechten

**Einheitlicher Datenzugriff**

* Verwendung der Feature Data Objects (FDO) Schnittstelle für Raster- und Vektordaten
* Standardisierter Zugriff auf eine Vielzahl von Quellen: SHP, SDF, Oracle, MySQL und PostGIS

**Flexible Anwendungsentwicklung**

* Anwendungen in PHP, .NET, oder Java entwickeln

**Umfangreiche serverseitige APIs**

* Permanentes Erstellen, Abfragen, Lesen und Schreiben mit Session-basierten XML Dokumenten 
* Abfragen und Aktualisieren von Objekten
* Koordinaten umprojizieren
* Erstellen, Bearbeiten und Analyse von Geometrien
* Karten und Layer während der Laufzeit bearbeiten

**Schnelle, skalierbare und sichere Server-Plattform**

* Multithreading und Unterstützung mehrerer Prozessoren
* Lastverteilung zwischen Servern
* bei Datenbanken werden Pooled Connections (Datenbankverbindungen, die in einem Cache gehalten werden) unterstützt
* Integriertes Tile-Caching

**Verschiedene Plattformen werden unterstützt**

* Lauffähig auf Microsoft Windows oder Linux
* Anwendungen über Apache HTTP-Server oder Microsoft IIS bereitstellen
* Benutzbar mit Microsoft Internet Explorer, Mozilla Firefox, Safari und Google Chrome

Unterstützte Standards
--------------------------------------------------------------------------------

* OGC Web Map Service 1.1.1 

Details
--------------------------------------------------------------------------------

**Webseite:** http://mapguide.osgeo.org/

**Lizenz:** GNU Lesser General Public License (LGPL) 

**Software Version:** 2.4.0 Pre-Release

**Unterstütze Plattformen:** Linux, Windows

**Kommerzieller Support:** http://www.osgeo.org/search_profile

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/mapguide_quickstart>`


