:Author: Peter Baumann , Michael Owonibi
:Version: osgeo-live4.5
:License: Creative Commons

.. _rasdaman-overview:

.. image:: ../../images/project_logos/logo-rasdaman.png
 :scale: 100 %
 :alt: project logo
  :align: right
  :target: http://rasdaman.org


********
Rasdaman
********

Multi-Dimensionale Raster-Datenbank
===================================

Rasdaman erweitert relationale Standard-Datenbanken um Speicherung und Retrieval von multi-dimensionalen Rasterdatan (also "Arrays") unbegrenzeter Größe unter Verwendung einer SQL-artigen Raster-Anfragesprache mit hocheffektiver server-seitiger Optimierung. Die Daten werden in einer PostgreSQL-Datenbank abgelegt, sodass sich eine enge Informationsintegration ergibt. Ein rasdaman-Treiber ist Bestandteil von GDAL (Geospatial Data Abstraction Library) für Geodatenformate, eine MapServer-Anbindung ist in beta verfügbar.
Zugriffsschnittstellen umfassen - neben der rasdaman Raster-Anfragesprache - OGC WCS, WCPS und WPS sowie C++ und Java APIs.

Somit stellt rasdaman eine flexible, schnelle und skalierbare Rasterdatenbank dar, welche Navigation, Extraktion, Aggregation und ad-hoc raum-zeitlicheAnalysen auf Sensor-, Bild- und Statistikdaten erlaubt.

Die rasdaman-Technologie ist stabil und ausgereift, sie ist seit mehr als 10 Jahren im praktischen Einsatz. Das französische Nationale Geographische Institut betreibt rasdaman auf einem Dutzend-Terabyte blattschnittfreien Luftbild. Auf der ACM "Principles of Database Systems" Konferenz 2007 hat die Rasterdatenbank-Expertin Rona Machlin rasdaman als "die umfassendste Implementierung eines solchen Systems" charakterisiert.

.. image:: ../../images/project_logos/apps-collage.jpg
  :scale: 100 %
  :alt: project logo
  :align: right

Wichtigste Merkmale
-------------------

    * echte Multi-Dimensionalität - von 1D über 2D, 3D, 4D und darüber hinaus
    * mächtige, flexible Anfragesprache für Aufgaben wie Visualisierung, Klassifikation, Konvolutionen/Kernel, Aggregation und viele weitere Geo-Funktionen
    * räumliche Indexierung und adaptive Kachelung für schnellen Datenzugriff
    * "tile streaming" für Skalierbarkeit und hohe Performance auch auf moderater Hardware
    * Mehrbenutzer-Zugriff durch Server-Multiplexing
    * volle Informationsintegration der Rasterdaten mit allen anderen Geodaten in ein und derselben PostgreSQL-Datenbank

Implementierte Standards
------------------------

    * OGC WCS 2.0, WCS-T 1.4, WCPS 1.0, WPS 1.0

Details
-------

**Website:** www.rasdaman.org

**Lizenz:**

* Clients und Petascope: GNU Lesser General Public License (LGPL) version 3
* Server-Engine: GNU General Public License (GPL) version 3

**Software Version:** 8.1

**Unterstützte Plattformen:** Linux, Mac, Solaris

**APIs:** rasql, C++, Java; OGC-basierte WCS, WCPS, WCS-T, und WPS Schnittstellen

**Support:**  www.rasdaman.com


