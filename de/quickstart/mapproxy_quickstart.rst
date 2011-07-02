:Author: Oliver Tonnhofer
:Author: Dominik Helle
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported License

.. _mapproxy-quickstart:
 
.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy Quickstart
~~~~~~~~~~~~~~~~~~~

MapProxy ist das "Schweizer Taschenmesser" für alle WMS- und Kacheldienste. MapProxy speichert, beschleunigt und transformiert bestehende Kartendienste aller Art.

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: center

MapProxy ist weit mehr als nur eine Caching-Lösung. MapProxy bietet umfangreiche und innovative Funktionen an. So beschleunigt MapProxy zum Beispiel WMS-Dienste, ohne dass dabei der WMS-Standard verloren geht. Vorhandene Desktop- und WebGIS Anwendungen können weiter genutzt werden.

Demo starten
-------------------

MapProxy kann flexibel in vorhandene Systeme eingebaut werden. So ist zum Beispiel eine Integration in den Apache Webserver möglich. Zusätzlich kann MapProxy aber auch als eigener Dienst gestartet werden. Dies ist die einfachste Methode um zu Beginn mit dem MapProxy zu arbeiten.

Um MapProxy als eigenen Service zu starten klicken Sie im Menü unter *Geospatial* --> *Web Services* --> *Start MapProxy*.


MapProxy Demo
------------------

Die MapProxy Demo beinhaltet eine rudimentären WMS- und Kachel-Anwendung. In der Demo-Anwendung wird jeder konfigurierte Layer automatisch zur Verfügung gestellt. Die Projektion kann in der Demo nicht ausgewählt werden. Die MapProxy Demo dient vor allem zur Kontrolle von Installation und Konfiguration.

Sie können die Demo im Firefox öffnen: `<http://localhost:8012/demo>`_

MapProxy im Desktop GIS
-------------------

Die Dienste, die über den MapProxy zu Verfügung gestellt werden, können Sie in das Desktop GIS ihrer Wahl zum Beispiel uDig, QGIS oder gvSIG einbinden. Die WMS-URL lautet: `<http://localhost:8012/service?>`_

Die Beispiel-Konfiguration des MapProxy beinhaltet einige Layer die unterschiedliche Kartenserver und Kartendaten verwenden. Im Folgenden sind nähere Einzelheiten zu den einzelnen Layern beschrieben:

.. figure:: ../../images/screenshots/800x600/mapproxy_udig.png
  :alt: MapProxy Beispiel in uDig
  :align: center
  
  WMS Layer mit Daten von zwei kaskadierenden Quellen und `FeatureInformation` 

Verfügbare Layer
----------------

**mapnik**:
  Der Mapnik stellt die Weltbevölkerung graphisch dar. Hierfür muss der Mapnik-Dienst nicht gestartet werden, da der Layer über die direkte Mapnik-Unterstützung in den MapProxy eingebunden ist. 

**tilelite**:
  TileLite ist ein einfacher Server zum Ausliefern von Kacheln über den Mapnik. Dieser Layer demonstriert die Fähigkeit bestehende Kachel-Dienste in den MapProxy einzufügen und diese als WMS zur Verfügung zu stellen. 
  Um den Layer anzuzeigen müssen sie TileLite über *Start Mapnik & TileLite* starten.
 
**geoserver**:
  In diesem Layer wird die US Bevölkerung mit Hilfe des Geoserver WMS dargestellt. Der Layer unterstützt ``GetFeatureInfo`` anfragen, welche von mehreren Quellen zusammengefasst wurden. 
  Um den Layer anzuzeigen müssen sie den Geoserver über *Start GeoServer* starten.

**mapnik_geoserver**:
  Dieser Layer demonstriert die Fähigkeit unterschiedliche Quellen in einem Layer zu kombinieren. Der Layer kombiniert die Weltbevölkerung vom Mapnik mit der US Bevölkerung vom GeoServer. Die Unterstützung vom ``GetFeatureInfo`` für den US Bevölkerungs-Layer ist weiterhin verfügbar.
  Um den Layer anzuzeigen müssen sie den Geoserver über *Start GeoServer* starten.

Eigene MapProxy Konfiguration erstellen
---------------------------------------

Sie können das Konsolenwerkzeug ``mapproxy-util`` benutzen um eine Konfiguration zu erstellen und um den Testserver zu starten.

Neue Konfiguration erstellen:

  mapproxy-util create -t base-config ~/mapproxy

MapProxy-Testserver unter Port 8012 und mit der Beispiel Konfiguration starten:

  mapproxy-util serve-develop ~/mapproxy/mapproxy.yaml -b 0.0.0.0:8012

Sie können nun die Demo aufrufen: http://127.0.0.1:8012/demo/.
MapProxy startet automatisch neu wenn Sie Änderungen an der Konfigurationsdatei durchgeführt haben. 

Der nächste Schritt
-------------------

* Lesen Sie die `MapProxy Dokumentation <../../mapproxy/doc/index.html>`_

* Schauen Sie die Beispiel-Konfiguration an: (``/usr/local/share/mapproxy/mapproxy.yaml``)
