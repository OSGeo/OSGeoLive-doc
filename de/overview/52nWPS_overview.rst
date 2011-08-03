:Author: Bastian Schaeffer, Kristof Lange
:Version: osgeo-live4.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _52nWPS-overview:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/wps


52°North WPS
============

Web Service
~~~~~~~~~~~

Der 52°North `Web Processing Service (WPS) <../standards/wps_overview.html>`_ ermöglicht den webbasierten Zugang auf raumbezogene 
Verarbeitungsalgorithmen, die verfügbar sind in Sextante, ArcGIS Server oder auch eigene definierte Algorithmen.
Dabei können die Algorithmen einfach sein wie eine Bestimmung der unterschiedlichen Einflüsse der verschiedenen Jahreszeiten
bis hin zu komplizierten globalen Klimaänderungsmodellen.


.. image:: ../../images/screenshots/1024x768/52n_test_client.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Kerneigenschaften
-----------------

GIS Kernfunktionen:

* SimpleBufferAlgorithm
* DouglasPeuckerAlgorithm
* IntersectionAlgorithm
	
Backend Algorithmen stehen zur Verfügung in:

* Sextante
* ArcGIS Server

unterstützte Input- und Outputformate:

* Vektor Daten: GML2, GML3, SHP files, KML, WKT (Well-known Text)
* Raster Daten: Geotiff, AsciiGrid

Browserbasierter Client

Implementierte Standards
------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Details
-------

**Webseite:** http://52north.org/wps

**Lizenz:** GPL

**Software Version:** WPS 2.0 RC6

**Unterstützte Plattformen:** Windows, Linux, Mac

**Kommerzieller Support:** http://www.52north.org


Quickstart
----------

* :doc:`Quickstart Dokumentation <../quickstart/52nWPS_quickstart>`

