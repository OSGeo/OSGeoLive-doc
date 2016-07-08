:Author: Balasubramaniam Natarajan
:Translator: Astrid Emde
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-cesium.png 
  :alt: project logo
  :align: right
  :target: http://cesiumjs.org

Cesium
================================================================================

3D Globen und 2D Karten im Browser
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cesium ist eine JavaScript Bibliothek zur Erstellung von 3D Globen und 2D Karten im Browser ohne jegliche Plugins. Cesium verwendet WebGL für Hardware beschleunigte Graphiken. Es ist plattformunabhängig, browserunabhängig und ist für die dynamische Datenvisualisierung optimiert.

.. image:: ../../images/screenshots/1024x768/cesiumjs_3in1.png
  :scale: 50 %
  :alt: Cesium example
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------
* Dynamic räumliche Darstellung:

  * Erzeugt Daten gesteuerte, zeitdynamische Szenen mit `CZML <https://github.com/AnalyticalGraphicsInc/cesium/wiki/CZML-Guide>`_.
  * Visualisiert ein hochauflösendes weltweites Terrain.
  * Zeichnet Rastererbenen mit Hilfe von WMS, TMS, OpenStreetMaps, Bing, und Esri Standards.
  * Zeichnet Vektor Daten über GeoJSON und TopoJSON.
  * Zeichnet 3D Modelle mit Hilfe von COLLADA und glTF.
  * Mit Hilfe von `Plugins <http://cesiumjs.org/plugins/index.html>`_ kann Cesium erweitert werden.

* Entwickelt für Performanz und Präzision:

  * Optimiertes WebGL über stabelweise und effizientes Auslesen von Hardware beschleunigten Graphiken.
  * Zeichnet eine große Auswahl an Geometrien inklusive Polylinien, Polygonen, Marker, Beschriftungen, Verdrängungen und Korridore.
  * Kontroolliert die Kamera und erzeugt Flugrouten.
  * Verwendet Standard Widgets zur kontrolle der Animationszeit, Auswahl von Bildebenen und Zoom auf Positionen.

* Eine API, drei Ansichten: 

  * Cesium unterstützt einen 3D Globus, eine 2D Karte und eine 2.5D Columbus Ansicht mit derselben API.

Implementierte Standards
--------------------------------------------------------------------------------
* WMS und WMTS


Details
--------------------------------------------------------------------------------

**Webseite:** http://cesiumjs.org

**Lizenz:** Apache 2.0 Lizenz

**Software Version:** 1.18

**Unterstützte Plattformen:** Plattform unabhängig, benötigt ledgiglich einen Browser mit WebGL Unterstützung

**Community Support:** Mailing Liste cesium-dev@googlegroups.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/cesium_quickstart>`
