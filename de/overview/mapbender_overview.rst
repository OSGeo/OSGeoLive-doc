:Author: Astrid Emde
:Version: osgeo-live4.5
:License: Creative Commons

.. _mapbender-overview:

.. image:: ../../images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapbender.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 90 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


Mapbender
=========

Geoportal Framework
~~~~~~~~~~~~~~~~~~~

`Mapbender <http://www.mapbender.org>`_ ist ein graduiertes OSGeo Projekt. Mapbender ist ein web-basiertes Geoportal Framework zum Veröffentlichen, Anzeigen und Überwachen von OGC Diensten, mit der Möglichkeit Dienste gesichert anzubieten. 

Mapbender ist die Spitze des Eisbergs, eine Software, die als Zwischenschicht für den Zugriff auf GIS Komponenten dient. Mapbender bietet eine einfache Möglichkeit, angepasste Client-Anwendungen aus einer Vielzahl von Komponenten zusammen zu stellen. Das Besondere ist, dass hierbei keiner bis minimaler Programmieraufwand notwendig ist. Für die Administration wird lediglich ein Browser benötigt. 

Mapbender ist das Werkzeug der Wahl für GIS Administratoren, die Karten- und Datendienste veröffentlichen, unterhalten, kategorisieren und überwachen müssen. Mapbender beitet eine Rechteverwaltung mit der Vergabe von Rechten für einzelne Benutzer und Gruppen. Mapbender bietet Komponenten mit Serverfunktionalität beispielsweise für den gesicherten Zugriff auf Dienste, Digitalisierung und mehr.

Der Mapbender Client basiert auf HTML und JavaScript unter Verwendung der jQuery und jQuery UI Bibliotheken, die diverse Module bereitstellen. Der serverseitige Bereich verwendet PHP und eine PostgreSQL/PostGIS Datenbank.

Mapbender gibt dem GDI Management durch die alleinige Nutzung eines Standard Web Browsers eine neue Perspektive.

.. image:: ../../images/screenshots/800x600/mapbender_demo.png
  :scale: 50%
  :alt: Mapbender application
  :align: right


Hauptmerkmale
-------------

* leichtes Erzeugen von Web Mapping Anwendungen über Anwendungsvorlagen

  * hinzufügen/entfernen/anpassen von jQuery Elementen
  * Stilanpassung über den jQuery UI Themeroller
* Laden und Verwalten von OGC WMS (Capabilities caching) 

  * Überlagern von verschiedenen WMS
  * Anpassung der Layersichtbarkeit
  * Sortierung
  * Formatauswahl
  * Anpassung der Layertitel
  * Erweiterung der Metadaten der Dienste des Capabilities-Dokuments (ISO Standard) zur Katalogsuche mit einer CS-W Anwendung
* WFS laden und konfigurieren zum Suchen, Finden und Hervorheben von Geoobjekten 
* Kopplung von transactionalen WFS an einen WMS, um eine webbasierte Digitalisierung zu ermöglichen. Diese Digitalisierung ermöglicht ein diensteübergreifendes snapping, Geometrieanpassungen wie Teilungen, Verschmelzung und Klonen
* Benutzerverwaltung: Anlegen von Benutzern und Gruppen. Dienste und modulbasierte Rechtezuweisung
* WMC Handling
* Verbidung mit entfernten Katalogdiensten und optional die Verbindung mit GeoNetwork opensource
* Beschränketen Benutzerzugriff mit dem OWS Security Proxy Modul über gesicherte Dienste
* Monitoring und Status Benachrichtigung sowie auto-update Service für OGC Services
* Ausgabe von OpenLayers Anwendungen aus dem Mapbender Dienste Repository
* Hochqualitativer Druck unter verwendung eigener PDF Vorlagen.
* ... und mehr!

Unterstützte Standards
---------------------

* OGC Web Map Service (WMS) 1.0.0, 1.1.0, 1.1.1
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0
* OGC Web Map Context (WMC) 1.1.0 

Details
-------

**Webseite:** http://www.mapbender.org/ 

**Lizenz:** Mapbender verfügt über eine duale Linzenz und zwar über die GNU General Public Lizenz und die Simplified BSD Lizenz
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/gpl.txt  
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/simplified_bsd.txt

**Software Version:** 2.7

**Unterstützte Plattformen:** Windows, Linux, Mac

**Support:** http://www.mapbender.org/Support


Schnelleinstieg
---------------

* `Schnelleinstieg Dokumentation <../quickstart/mapbender_quickstart.html>`_


