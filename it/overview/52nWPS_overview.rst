:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, Jirotech
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

52°North :doc:`Web Processing Service (WPS) <../standards/wps_overview>` permette
l'accesso attraverso il web ad algoritmi di elaborazioni geospaziali forniti da
Sextante, ArcGIS Server, R, GRASS 7, o funzioni personalizzate. Gli algoriti possono
essere semplici come determinare la differenza in casi di influenza tra due diverse 
stagioni, o complicato come una modello di cambiamento climatico.

.. image:: ../../images/screenshots/800x600/52nWPS_welcome_page.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

Funzioni GIS principali

* SimpleBufferAlgorithm
* DouglasPeuckerAlgorithm
* IntersectionAlgorithm
* AddRasterValuesAlgorithm
* CoordinateTransformAlgorithm
	
Algoritmi di back-end disponibili attraverso:

* Sextante
* ArcGIS Server
* R
* GRASS 7

Formati di input e output supportati:

* Dati vettoriali: GML2, GML3, SHP files, KML, WKT (Well-known Text), DGN, JSON
* Dati raster: Geotiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA
* Output possono essere salvati in GeoServer/MapServer 

Un client internet

Standard implementati
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://52north.org/wps

**Licenza:** GPL 2

**Versione Software:** WPS |version-52nWPS|

**Piattaforme Supportate:** Windows, Linux, Mac

**Supporto Commerciale:** http://52north.org

**Other 52°North projects:** :doc:`SOS <./52nSOS_overview>`

Guida Rapida
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/52nWPS_quickstart>`


