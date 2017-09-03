:Author: Ian Turton
:Author: Frank Gasdorf
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-GeoServer.png
  :alt: project logo
  :align: right
  :target: http://geoserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

GeoServer
================================================================================

Internet Dienste
~~~~~~~~~~~~~~~~ 

GeoServer ist ein WebServer, der es ermöglicht Karten und Daten verschiedener Formate Standardanwendungen wie Web Browsern und Desktop GIS Anwendungen bereit zu stellen. Die Daten werden über Eingabemasken, die sich an den Standards (WMS, WFS, WCS, WPS, Tile Caching und mehr) orientieren, veröffentlicht. GeoServer verfügt über eine browserbasierte Administration und verbindet so im Hintergrund viele Datenquellen.

.. image:: /images/screenshots/geoserver/geoserver.png
  :scale: 60 %
  :alt: GeoServer Screenshots
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

**Server Daten verschiedener Datenquellen:**
    * Vektor
        - Shapes, externe WFS
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server
    * Raster
        - GeoTiff, JPG and PNG (mit world file), Bildpyramiden, GDAL Formate, Image Mosaic, Oracle GeoRaster

**Daten werden als sichere und schnelle Bilder über das WMS Protokoll bereitgestellt:**
    Da die Daten als Bild ausgegeben werden, sind Ihre Daten absolut abgesichert und verborgen. Abgesehen davon, dass Ihre Daten abdigitalisiert werden könnten, gibt es keine Möglichkeit, Ihre Daten zu stehlen.
    Die Darstellung jeder Kartenebene kann über SLD kontrolliert werden. SLD erlaubt es, Objekte farblich differenziert darzustellen und zu beschriften. Durch Kombination dieser Darstellungsregeln mit OGC Filtern kann eine maßstabsabhängige Darstellung erfolgen, bei der beim Zoom in die Karte mehr Details angezeigt werden. Beschriftungsverdrängung, Gruppierung, Priorisierung sind ebenfalls implemetiert.

**Über das WFS Protokoll können Vektordaten an den Client geschickt werden:**
     Ein WFS Client kann Daten anfordern und zur Anzeige, Datenanalyse und für andere Oberationen nutzen. Liegt eine Authorisierung vor so kann der Benutzer Daten modifizieren und zurück an den Server schicken und mit Hilfe des WFS-T Protokolls aktualisieren.
     Die Daten können als GML (compressed) sowie in anderen Standardformaten wie Shape und JSON weitergegeben werden.

**Werte von Rasterdaten können an den Client über das WCS Protokoll geschickt werden:**
     Ein GIS CLient kann die aktuellen Rasterdaten für den Einsatz in räumlichen Analysen anfordern. This allows a user to create applications which can model the process described by your data.

**On-the-fly Umprojektion:**
     GeoServer unterstützt die Mehrzahl der EPSG Projektionen und kann Daten in jedes dieser Projektionssysteme umprojezieren. Hierdurch können Anwendungen mit begrenzter Umprojektionsunterstützung die Last auf den Server verlagern.

**Tiling Cache**
    `GeoWebCache <http://geowebcache.org/>`_ wurde in GeoServer integriert. GeoWebCache kachelt und legt eine Zwischenspeicher von Kartenbilder von einer Vielzahl von Quellen beispielweise WMS an. Es wurden verschiedene Service Interfaces geschaffen (WMS-C, WMTS, TMS, Google Maps KML, Virtual Earth), um die Bildauslieferung zu beschleunigen und zu optimieren. Kacheln können ebenso wieder zusammengefügt werden, um mit gängigen WMS Clients zu arbeiten.

**Web Processing Service (WPS)**
    Räumliche Algorithmen, inklusive der :doc:`JTS <jts_overview>` Algorithme, können über GeoServer's :doc:`WPS <../standards/wps_overview>` Interface aufgerufen werden. Dies beinhaltet das Verketten von Prozessen und verwendet Renderingtransformationen, um eine beeindruckende Darstellungdurch das WMS Interface zu erzeugen.

Implementierte Standards
--------------------------------------------------------------------------------

* Unterstützung zahlreicher Open Geospatial Consortium (OGC) Standards:

  * :doc:`../standards/wms_overview`
  * Web Map Tile Service (WMTS)
  * :doc:`../standards/wfs_overview`, WFS-T (transaktional)
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/wps_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview`
  * :doc:`../standards/gml_overview`
  * :doc:`../standards/kml_overview` 

Details
--------------------------------------------------------------------------------

**Webseite:** http://geoserver.org/

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** |version-geoserver|

**Unterstützte Plattformen:** Alle Java 6 Plattformen: - Windows, Linux, Mac

**API Schnittstellen:** WMS, WFS, WCS, REST

**Support:** http://geoserver.org/support/

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/geoserver_quickstart>`
