:Author: Oliver Tonnhofer
:Author: Dominik Helle
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
================================================================================

WMS- & Kachel-Proxy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right

MapProxy beschleunigt Kartenanwendungen durch das Vorgenerieren und Zwischenspeichern von Karten in einem lokalen Cache. Karten können durch MapProxy kombiniert, umtransformiert und manipuliert werden. So verfügt MapProxy zum Beispiel über die Möglichkeit Transparenz hinzuzufügen oder Wasserzeichen in der Karte einzublenden.

MapProxy ist flexibel einsetzbar und kann bei einfachen, aber auch bei komplexen Anwendungsfällen zum Einsatz kommen: Vom einfachen Zwischenspeicher für eine OpenLayers Web-Anwendung bis hin zum Einsatz als zentraler Knotenpunkt in einer GDI, bei dem MapProxy  dutzende WMS Dienste kombiniert, vereinheitlicht und beschleunigt.

Beispiele aus der Praxis: MapProxy wird im Breitbandatlas des BMWi verwendet um Karten an tausende Benutzer so schnell wie möglich auszuliefern. Außerdem wird MapProxy vom Bundesamt für Kartographie und Geodäsie verwendet um unterschiedliche WMS Dienste aller 16 Bundesländern on-the-fly zusammenzufassen.


Funktionen von MapProxy
--------------------------------------------------------------------------------

.. image:: /images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right

Quellen:
  * WMS 1.0.0–1.3.0 (:doc:`MapServer <mapserver_overview>`, :doc:`GeoServer <geoserver_overview>`, etc.)
  * TMS, WMTS (TileCache, GeoWebcache, etc.)
  * Mapserver und Mapnik (direkt, ohne WMS)
  * jeder TileCache, Google Maps oder Bing kompatible Quellen

Services:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

Kachel-Optionen:
  * einheitliche Bilder werden nur einmalig gespeichert (z.B. Wasser Kacheln)
  * speichert Kacheln im Dateisystem, in MBTiles-Dateien oder in CouchDB
  * Wasserzeichen zu Kacheln hinzufügen

Optionen für zur Verfügung gestellte Dienste:
  * Quellen können über eine Geometrie beschränkt werden (z.B. durch ein Shapefile)
  * Transparenz zu undurchsichtigen Layern hinzufügen
  * mehrere Quellen zu einem Dienst zusammenfassen
  * umtransformieren in andere Projektionen

WMS Eigenschaften:
  * Layer-Gruppen aus unterschiedlichen Quellen
  * ``GetMap`` Anfrage aus Kacheln erstellen und so eine Unterstützung für freies Zoomen und für jede Projektion ermöglichen
  * bestehende WMS zwischen 10 und 100 mal schneller
  * ``GetLegendGraphic`` Anfragen beantworten
  * ``GetFeatureInfo`` Anfragen zusammenfassen und optional mit XSL transformieren
  * Projektionen anbieten, die nicht von der ursprünglichen Quelle angeboten werden
  * WMS Versionen aktualisieren und Bild-Formate konvertieren

Sicherheit:
  * offene Schnittstelle zum Absichern von Diensten und Layern
  * Polygongenaue Zugriffsbeschränkung (für WMS und Kachel-Dienste)
  * Integration mit bestehenden Benutzerdatenbanken und Authentifizierungsmethoden

Nützliche Tools:
  * effizientes Seed-Tool zum Vorgenerieren des Caches (Bereiche können auf Polygone beschränkt werden)
  * gespeicherte Kacheln in andere Formate exportieren
  * Umrechnen von Maßstäben und analysieren von Grid-Konfigurationen

Weitere Funkionen:
  * einfaches aber mächtiges Konfigurationsformat (YAML/JSON)
  * Demo-Anwendung basierend auf OpenLayers (siehe Rechts)
  * mehrere WMS-Dienst in einer MapProxy-Instanz
  * Wasserzeichen und Copyrightzeilen einfügen
  * Unterstützung für Rasterdaten z.B. DEM (keine Bilder)
  * und vieles mehr...

Implementierte Standards
--------------------------------------------------------------------------------

MapProxy unterstützt folgende offene Spezifikationen:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0 (KVP und RESTful)
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays


Details
--------------------------------------------------------------------------------

**Webseite:** http://mapproxy.org/

**Lizenz:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Software Version:** |version-mapproxy|

**Unterstütze Plattformen:** Linux, Mac, Windows

**Support:** http://mapproxy.org/support.html


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/mapproxy_quickstart>`
