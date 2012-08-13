:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: 
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer è un server per dati Earth Observation (EO). Più precisamente è una 
applicazione e un framework Python per rappresentare dati e metadati EO.

La missione di EOxServer: Fornire un software Open Source per facilitare
la fornitura online di grandi archivi di dati Earth Observation attraverso servizi
Open Standard per un efficiente sfruttamento da parte degli utenti

* Open Source: licenza MIT-style
* software framework: Interamente basato su Open Source (Python, :doc:`MapServer <mapserver_overview>`, 
  Django/GeoDjango, :doc:`GDAL <gdal_overview>`, :doc:`SpatiaLite <spatialite_overview>`, o 
  :doc:`PostGIS <postgis_overview>`, e PROJ.4)
* ease online provision: Admin GUI and command line data registration
* big Earth Observation data archives: Operators register existing raster data 
  archives
* Servizi Open Standard: Open nel senso di liberamente disponibili; Open 
  Geospatial Consortium (OGC); WMS, WCS, EO-WMS, EO-WCS
* efficiente sfruttamento da parte degli utenti: gli utenti possono inserire sub-setting; vista e scaricamento

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: EOxServer embedded client screen shot
  :align: right


Caratteristiche principali
--------------------------------------------------------------------------------

Le caratteristiche principali disponibili sono:

* Supporto di GML AP – Coverages per RectifiedGridCoverages
* Supporto delle specifiche adottate dal WCS 2.0 (Includendo le richieste GetCapabilities, 
  DescribeCoverage, e GetCoverage, i binging al protocollo KVP- e XML/POST)
* Supporto anticipato delle estensioni previste: formato Coverage, codifica GeoTIFF, 
  CRS (o EPSG) predefinit, ridimensionamento e interpolazione, e accesso
  non georiferito. Per "anticipando" si intende di riflettere le più recenti
  Discussioni WCS.SWG così come seguire le parti pertinenti delle precedenti
  versioni di WCS 1.1 e 1,0.
* Supporto di 2-D EO Coverages derivato da gmlcov:RectifiedGridCoverage
* Supporto di 2-D EO Coverages derivato da gmlcov:ReferenceableGridCoverage
* Supporto del Dataset Series come un collezione di EO Coverages es. in una 
  serie temporale
* Supporto della nuova operazione DescribeEOCoverageSet nei Dataset Series e EO 
  Coverages
* Supporto del Stitched Mosaic di Rectified EO Coverages includendo il concetto 
  di contributingFootprint
* Supporto di EO Metadata (recupero e valutazione nelle operazione DescribeEOCoverageSet)
* Bindings ai protocolli supportati:

 * KVP
 * XML/POST (usato insieme al SOAP2POST Proxy per supportare i binding al protocollo XML/SOAP) 

* Formati supportati per Coverage:

 * GeoTIFF
 * Formati supportati della libreria GDAL (il supporto necissita che ogni formato
   sia verificato singolarmente) 

* Supporto di EO-WMS per EO Coverages 

Standard implementati
--------------------------------------------------------------------------------

* Supporto di numerosi standard Open Geospatial Consortium  (OGC)

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

Demo
--------------------------------------------------------------------------------

* `Local <http://localhost/eoxserver/>`_
* `Online <https://eoxserver.org/demo_stable/>`_

Documentazione
--------------------------------------------------------------------------------

* `EOxServer 0.2.1 Documentation <../../eoxserver-docs/EOxServer_documentation.pdf>`_

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://eoxserver.org/

**Licenza:** `MIT-style license <http://eoxserver.org/doc/copyright.html#license>`_

**Versione Software:** 0.2.1

**Piattaforme Supportate:** Linux, Windows, Mac

**Interfacce API:** Python

**Supporto:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Guida rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/eoxserver_quickstart>`
