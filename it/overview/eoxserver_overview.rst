:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo-eoxserver.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

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

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer embedded client
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

* Visualizzazione, filtro, subset e scaricamento EO data
* Caricamento e/o registrazione di set di dati EO esterni 
* Interfaccia di amministrazione sul web e da linea di comando
* Pubblicazione dei dati attraverso standard Open Geospatial Consortium (OGC):

  * Web Coverage Service (WCS) 1.0, 1.1 and 2.0 e proposto EO-WCS
  * Web Map Service (WMS) & EO-WMS
  * Proposta estensione al WCS per includere: codifica GeoTIFF, proiezioni 
    predefinite (CRSs), riscalamento, e interpolazione.
  * Protocolli supportati sono KVP, XML/POST (usato insieme con SOAP2POST
    Proxy per fornire un'interfaccia XML/SOAP).

* Pubblicazione usando i seguenti formati e gruppi:

    * 2-D EO Coverages derivato da gmlcov:RectifiedGridCoverage
    * 2-D EO Coverages derivato da gmlcov:ReferenceableGridCoverage
    * Dataset Series come un collezione di EO Coverages es. in una 
      serie temporale
    * Stitched Mosaic of Rectified EO Coverages including contributingFootprint

* Formati supportati per Coverage:

 * GeoTIFF
 * Formati supportati della libreria GDAL (il supporto necissita che ogni formato
   sia verificato singolarmente) 

Standard implementati
--------------------------------------------------------------------------------

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

Dettagli
--------------------------------------------------------------------------------

* `Local <http://localhost/eoxserver/>`_
* `Online <https://eoxserver.org/demo_stable/>`_

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://eoxserver.org/

**Licenza:** `MIT-style license <http://eoxserver.org/doc/copyright.html#license>`_

**Versione Software:** 0.2.2

**Piattaforme Supportate:** Linux, Windows, Mac

**Interfacce API:** Python

**Supporto:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Guida rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/eoxserver_quickstart>`
