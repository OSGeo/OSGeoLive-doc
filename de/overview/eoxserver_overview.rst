:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Frank Gasdorf 
:Translator: Stephan Meissl

.. image:: /images/project_logos/logo-eoxserver.png
  :alt: project logo
  :align: right
  :target: https://eoxserver.readthedocs.org/

EOxServer
================================================================================

Internet Dienste
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer ist ein Server um große Archive von Erdbeobachtungsdaten (Earth 
Observation - EO) über offenen Standards zur Verfügung zu stellen.

Die momentan unterstützen Erdbeobachtungsdaten beinhalten 2D Rasterdaten wie 
sie im Allgemeinen von Sensoren auf Satelliten oder Flugzeugen aufgenommen 
werden und welche Informationen zu Zeit und Ort (Fußabdruck auf der Erde) 
der Aufnahme enthalten. Diese Daten werden üblicherweise benutzt um die 
natürliche und die bebaute Umwelt auf der Erde zu beobachten.

EOxServer basiert komplett auf Open Source Software wie Python, 
:doc:`MapServer <mapserver_overview>`, Django / GeoDjango, :doc:`GDAL 
<gdal_overview>`, PROJ.4 und einer :doc:`SpatiaLite <spatialite_overview>` 
oder :doc:`PostGIS <postgis_overview>` Datenbank.

.. image:: /images/screenshots/1024x768/eoxserver_screenshot.png
  :scale: 50 %
  :alt: In EOxServer eingebauter Klient
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* Ansehen, Filtern, Auswählen und Herunterladen von Erdbeobachtungsdaten
* Registrieren von Archiven von Erdbeobachtungsdaten
* Administration via Web und Kommandozeile
* Zur Verfügung stellen von Daten über :doc:`Open Geospatial Consortium (OGC) standards 
  <../standards/standards>`:

  * :doc:`Web Coverage Service (WCS) <../standards/wcs_overview>` 1.0, 1.1 und 2.0 & vorgeschlagenes EO-WCS
  * :doc:`Web Map Service (WMS) <../standards/wms_overview>` & EO-WMS
  * Vorgeschlagene Erweiterungen für WCS wie: GeoTIFF-Codierung, vordefinierte 
    Projektionen (CRSs), Skalierung und Interpolation.
  * Die unterstützen Protokolle sind: KVP und XML/POST (zusammen verwendet mit 
    dem SOAP2POST Proxy auch XML/SOAP)

* Zur Verfügung stellen unter Verwendung der folgenden Formate und 
  Gruppierungen:

  * 2-D EO Coverages abgeleitet von gmlcov:RectifiedGridCoverage
  * 2-D EO Coverages abgeleitet von gmlcov:ReferenceableGridCoverage
  * Dataset Series (Daten-Serien) als eine Sammlung von EO Coverages, zum 
    Beispiel einer Zeitreihe
  * Stitched Mosaics (Zusammengefügte Mosaike) von Rectified EO Coverages 
    einschließlich des Konzeptes von contributingFootprint

* Unterstützte Coverage-Formate:

  * GeoTIFF
  * Durch die GDAL-Bibliothek unterstützte Datenformate

Implementierte Standards
--------------------------------------------------------------------------------

  * WCS, EO-WCS
  * WMS, EO-WMS
  * WPS
  * GML, GMLCOV, EO-O&M
  * OpenSearch

Details
--------------------------------------------------------------------------------

**Webseite:** https://eoxserver.readthedocs.org/

**Lizenz:** `MIT-style license <https://eoxserver.readthedocs.org/en/latest/copyright.html#license>`_

**Software Version:** |version-eoxserver|

**Unterstützte Plattformen:** Linux, Windows, Mac

**API Schnittstellen:** Python

**Support:** https://eoxserver.readthedocs.org/en/latest/users/basics.html#where-can-i-get-support

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart Dokumentation <../quickstart/eoxserver_quickstart>`
