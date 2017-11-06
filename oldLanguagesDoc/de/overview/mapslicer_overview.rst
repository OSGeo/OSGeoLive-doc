:Author: Klokan Petr Pridal, Angelos Tzotsos
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-mapslicer.png
  :alt: Projektlogo
  :align: right
..  :target: https://wiki.osgeo.org/wiki/MapSlicer


MapSlicer
================================================================================

Map Publishing
--------------------------------------------------------------------------------

MapSlicer ist eine Desktop-Anwendung für schnelles Rasterkarten-Publishing durch 
das Erstellen von Kartenkacheln (Tiles). Geodaten werden umgewandelt zu Tiles, die kompatibel sind mit Google Maps und Google Earth - bereit für die Veröffentlichung per direktem Upload auf jeden beliebigen Webserver oder ein Cloud-Storage (wie Amazon S3).
Serverseitig ist keine aufwändige Konfiguration notwendig. 

Dynamische Interaktion wie Verschieben und Zoomen, Überlagerung von Markern und Vektordaten wird über eine leistungsstarke Browserfunktionalität bereitgestellt.

Die Anwendung generiert einen einfachen auf OpenLayers und der Google Maps API basierenden Kartenclient, der leicht angepasst werden kann.

Kernfunktionen
--------------------------------------------------------------------------------

* Unterstützung bekannter JavaScript-APIs: OpenLayers, Google Maps API
* Keine zusätzliche Server-Software-Installation erforderlich
* Hosting fast überall möglich: Cloud-Storage wie Amazon S3 oder preisgünstige "unlimitierte" Webhosting-Angebote mit FTP-Zugang
* Einfache Mashups mit kommerziellen Layern (Google, Bing , Yahoo) oder OpenStreetMap
* Kartenkacheln standardkonform nach OSGeo TMS (Tile Map Service Specification) 
* Möglichkeit, Rasterdaten in verschiedenen Formaten zu verarbeiten: TIFF / GeoTIFF, MrSID, ECW, JPEG2000, Erdas HFA, NOAA BSB, JPEG und mehr ... 

Details
--------------------------------------------------------------------------------

**Webseite:** https://wiki.osgeo.org/wiki/MapSlicer

**Lizenz:** New BSD License

**Source Code:** https://github.com/geopython/mapslicer

**Software Version:** |version-mapslicer|

**Supported Platforms:** Windows, Linux, Mac


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/mapslicer_quickstart>`
