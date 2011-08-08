:Author: Ian Turton
:Author: Frank Gasdorf
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GeoServer.png
  :scale: 100%
  :alt: project logo
  :align: right
  :target: http://geoserver.org/display/GEOS/Welcome

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoServer
================================================================================

Internet Dienste
~~~~~~~~~~~~~~~~ 

GeoServer ist ein WebServer, der es ermöglicht Karten und Daten verschiedener Formate Standardanwendungen wie Web Browsern und Desktop GIS Anwendungen bereit zu stellen. D.h., dass Sie Ihre räumlichen Daten in nahezu jedem `Format
<http://docs.geoserver.org/stable/en/user/data/index.html>`_ das sie bevorzugen vorhalten können. Ihre Anwender dagegen müssen keine Kenntnisse von Geodaten haben. Im einfachsten Fall benötigen die Anwender lediglich einen Browser, um Ihre Daten nach Ihren Wünschen anschauen zu können.

GeoServer ist die Referenzimplementierung des `Open Geospatial Consortium <http://www.opengeospatial.org>`_ (OGC)  
:doc:`Web Feature Service (WFS) <../standards/wfs_overview>` und 
:doc:`Web Coverage Service (WCS) <../standards/wcs_overview>` 
Standards, außerdem als hoch performant zertifizierter 
:doc:`Web Map Service (WMS) <../standards/wms_overview>`. 
GeoServer stellt eine Kernkomponente räumlicher Webanwendungen dar. 

.. image:: ../../images/screenshots/800x600/geoserver.gif
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

**WMS Kachelung**
    `GeoWebCache <http://geowebcache.org/>`_ ist ein WMS Kachelungs-Client. GeoWebCache fungiert als Proxy Server zwischen einem Karten-Client und einem Karten-Server, wobei Karten beim Anfordern gespeichert werden, redundante Anfragen werden umgangen und es wird ein großer Anteil der Prozessierungszeit eingespart. GeoWebCache wurde in GeoServer integriert.

Implementierte Standards
--------------------------------------------------------------------------------

* Unterstützung zahlreicher Open Geospatial Consortium (OGC) Standards

* WMS, WFS-T (transaktional), WCS, :doc:`Filter Encoding <../standards/fe_overview>`, :doc:`SLD <../standards/sld_overview>`,  :doc:`GML <../standards/gml_overview>`

Details
--------------------------------------------------------------------------------

**Webseite:** http://geoserver.org/display/GEOS/Welcome

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** 2.1.1

**Unterstützte Plattformen:** Alle Java 1.5 Plattformen: - Windows, Linux, Mac

**API Schnittstellen:** WMS, WFS, WCS, REST

**Support:** http://geoserver.org/display/GEOS/Commercial+Support

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/geoserver_quickstart>`
