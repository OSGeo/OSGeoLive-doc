:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/wps


52°North WPS
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Der 52°North `Web Processing Service (WPS) <../standards/wps_overview>`_ ermöglicht den webbasierten Zugang auf raumbezogene 
Verarbeitungsalgorithmen, die verfügbar sind in Sextante, ArcGIS Server oder auch eigene definierte Algorithmen.
Dabei können die Algorithmen einfach sein wie eine Bestimmung der unterschiedlichen Einflüsse der verschiedenen Jahreszeiten
bis hin zu komplizierten globalen Klimaänderungsmodellen.

.. image:: ../../images/screenshots/800x600/52nWPS_welcome_page.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Kerneigenschaften
--------------------------------------------------------------------------------

GIS Kernfunktionen:

* SimpleBufferAlgorithm
* DouglasPeuckerAlgorithm
* IntersectionAlgorithm
* AddRasterValuesAlgorithm
* CoordinateTransformAlgorithm
    
Backend Algorithmen stehen zur Verfügung in:

* Sextante
* ArcGIS Server
* R
* GRASS 7

unterstützte Input- und Outputformate:

* Vektor Daten: GML2, GML3, SHP files, KML, WKT (Well-known Text), DGN
* Raster Daten: Geotiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA

Browserbasierter Client

Implementierte Standards
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Details
--------------------------------------------------------------------------------

**Webseite:** http://52north.org/wps

**Lizenz:** GPL 2

**Software Version:** WPS |version-52nWPS|

**Unterstützte Plattformen:** Windows, Linux, Mac

**Kommerzieller Support:** http://52north.org

**Andere 52°North-Projekte auf OSGeo-Live:** :doc:`SOS <./52nSOS_overview>`


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/52nWPS_quickstart>`

