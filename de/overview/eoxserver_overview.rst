:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Author: Frank Gasdorf
:Reviewer: 
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
=========

Web Service
-----------

EOxServer ist ein Server für Erdbeobachtungsdaten (Earth Observation - EO). 
Genauer gesagt ist es eine Python-Anwendung und ein Framework für die Präsentation 
von EO-Daten und Metadaten.

EOxServer Mission: Ein Open-Source-Software-Framework bereitzustellen, um die 
Online-Bereitstellung von großen EO-Datenarchiven über offene und standardisierte 
Services für eine effiziente Nutzung durch die Benutzer zu erleichtern.

* Open Source: MIT-ähnlichen Lizenz
* Software-Framework: basiert komplett auf Open Source (Python, :doc:`MapServer <mapserver_overview>`, 
  Django / GeoDjango, :doc:`GDAL <gdal_overview>`, :doc:`SpatiaLite <spatialite_overview>` oder 
  :doc:`PostGIS <postgis_overview>` und PROJ.4)
* Online-Bereitstellung vereinfachen: Admin-GUI und Daten-Registrierung über Kommandozeile 
* Große EO-Datenarchive: Anwender kann vorhandene Rasterdaten registrieren
* offene standadisierte Services: Offen im Sinne von frei verfügbar, Open Geospatial 
  Consortium (OGC), WMS, WCS, WMS EO-, EO-WCS
* effizientes Erkunden durch Anwender: Benutzerdefinierte Einstellungen; Ansehen und Herunterladen

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: EOxServer embedded client screen shot
  :align: right


Kernfunktionen
--------------

Die zur Verfügung stehenden Kern-Features sind:

* Unterstützung von GML AP - Coverages für RectifiedGridCoverages
* Unterstützung von verabschiedeter WCS 2.0-Spezifikation (Core einschließlich GetCapabilities, 
  DescribeCoverage und GetCoverage Zugriffe, KVP-und XML / POST-Protokoll binding)
* Erwartete Unterstützung der geplanten Erweiterungen: Coverage-Format, GeoTIFF-Codierung, 
  vordefinierte (oder EPSG) CRS, Skalierung und Interpolation sowie nicht referenzierten Zugriff. 
  Mit "antizipieren" meinen wir, dass die neuesten WCS-SWG Diskussionen sowie die relevanten Teile 
  der früheren Versionen 1.1 und 1.0 von WCS unterstützt werden.
* Unterstützung von 2-D-EO Coverages von gmlcov abgeleitet: RectifiedGridCoverage
* Unterstützung von 2-D-EO Coverages von gmlcov abgeleitet: ReferenceableGridCoverage
* Unterstützung von Daten-Serien als eine Sammlung von EO Coverages, zum Beispiel einer Zeitreihe
* Unterstützung der neuen DescribeEOCoverageSet Operationen auf Daten-Serien und EO-Coverages
* Unterstützung zusammengefügter Mosaike von korrigierten EO Coverages einschließlich des Konzeptes 
  von contributingFootprint
* Unterstützung von EO-Metadaten (Abruf und Auswertung in DescribeEOCoverageSet Operationen)
* Protocoll Bindungen unterstützt:

  * KVP
  * XML / POST (zusammen mit SOAP2POST Proxy verwendet, um XML / SOAP-Protokoll verbindlich zu 
    unterstützen)

* Coverage-Formate unterstützt:

  * GeoTIFF
  * unterstützte Datenformate durch die GDAL-Bibliothek (Unterstützung muss für jedes gewünschte 
    Format separat verifiziert werden)

* Unterstützung von EO-WMS für EO Coverages


Implementierte Standards
------------------------

* Unterstützung zahlreicher Open Geospatial Consortium (OGC)-Standards

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

Demo
----

* `Lokal <http://localhost/eoxserver/>`_
* `Online <https://eoxserver.org/demo_stable/>`_

Dokumentation
-------------

* `EOxServer 0.2.1 Documentation <../../eoxserver-docs/EOxServer_documentation.pdf>`_

Details
-------

**Webseite:** http://eoxserver.org/

**Lizenz:** `MIT-style license <http://eoxserver.org/doc/copyright.html#license>`_

**Software Version:** 0.2.1

**Unterstützte Plattformen:** Linux, Windows, Mac

**API Schnittstellen:** Python

**Support:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Quickstart
----------
    
* :doc:`Quickstart Dokumentation <../quickstart/eoxserver_quickstart>`
