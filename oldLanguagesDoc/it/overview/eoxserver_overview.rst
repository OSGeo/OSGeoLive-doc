:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-eoxserver.png
  :alt: project logo
  :align: right
  :target: http://eoxserver.readthedocs.org/

EOxServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer è un server per visualizzare dati e matadati Earth Observation (EO)
attraverso Standard aperti.

I dati Earth Observation attualmente supportati includo raster 2D generalmente
acquisiti usando sensori di satelliti o aerei includendo informazioni sulla data
di acquisizione e il footprint del pianeta. È tipicamente usato per monitorare
l'ambiente naturale e artificiale

EOxServer è basato su Open Source che include Python, :doc:`MapServer <mapserver_overview>`,
Django/GeoDjango, :doc:`GDAL <gdal_overview>`, PROJ.4, 
:doc:`SpatiaLite <spatialite_overview>`, o :doc:`PostGIS <postgis_overview>`
come database

.. image:: /images/projects/eoxserver/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer embedded client
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

* Visualizzazione, filtro, subset e scaricamento EO data
* Registrazione di set di dati EO
* Interfaccia di amministrazione sul web e da linea di comando
* Pubblicazione dei dati attraverso standard :doc:`Open Geospatial Consortium (OGC) 
  <../standards/standards>`:

  * :doc:`Web Coverage Service (WCS) <../standards/wcs_overview>` 1.0, 1.1 e 2.0
    e il proposto EO-WCS
  * :doc:`Web Map Service (WMS) <../standards/wms_overview>` & EO-WMS
  * Proposta estensione al WCS per includere: codifica GeoTIFF, proiezioni 
    predefinite (CRSs), riscalamento, e interpolazione.
  * Protocolli supportati sono KVP, XML/POST (usato insieme con SOAP2POST
    Proxy per fornire un'interfaccia XML/SOAP).

* Pubblicazione usando i seguenti formati e gruppi:

    * 2-D EO Coverages derivato da gmlcov:RectifiedGridCoverage
    * 2-D EO Coverages derivato da gmlcov:ReferenceableGridCoverage
    * Dataset Series come un collezione di EO Coverages es. in una serie temporale
    * Stitched Mosaic of Rectified EO Coverages including contributingFootprint

* Formati supportati per Coverage:

 * GeoTIFF
 * Formati supportati della libreria GDAL

Standard implementati
--------------------------------------------------------------------------------

  * WCS, EO-WCS
  * WMS, EO-WMS
  * WPS
  * GML, GMLCOV, EO-O&M
  * OpenSearch

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** https://eoxserver.readthedocs.org/

**Licenza:** `MIT-style license <https://eoxserver.readthedocs.org/en/latest/copyright.html#license>`_

**Versione Software:** |version-eoxserver|

**Piattaforme Supportate:** Linux, Windows, Mac

**Interfacce API:** Python

**Supporto:** https://eoxserver.readthedocs.org/en/latest/users/basics.html#where-can-i-get-support

Guida rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/eoxserver_quickstart>`
