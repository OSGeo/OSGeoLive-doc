.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:Translator: Margherita Di Leo
:License: Creative Commons

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Web Map Service (WMS)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Lo standard OGC® Web Map Service (WMS) fornisce una semplice interfaccia HTTP per la richiesta di immagini di mappa da uno o piu` database spaziali distribuiti. La risposta alla richiesta e` una o piu` immagini di mappa (restituita come JPEG, PNG, ecc.) che puo` essere visualizzata in applicazioni desktop e browser. (http://www.opengeospatial.org/standards/wms) 

.. image:: ../../images/standards/wms.jpg
  :scale: 55%
  :alt: WMS in Context

Lo standard WMS definisce tre operazioni:

* GetCapabilities (richiesto): Ottiene i metadati del servizio, che costituiscono una descrizione interpretabile automaticamente (e anche leggibile) del contenuto informativo del WMS e dei parametri di richiesta accettati.

* GetMap (richiesto): Ottiene una immagine di mappa con parametri geospaziali e di dimensione ben definiti.

* GetFeatureInfo (opzionale): Richiede informazioni circa una entita` feature particolare mostrata in una mappa.

Questo standard e` correntemente implementato in centinaia di prodotti, molti dei quali sono registrati in (http://www.opengeospatial.org/resource/products/compliant).

Un esempio eccellente di portale che usa WMS e` NC OneMap (http://www.nconemap.com/): "NC OneMap si basa su Web Map Services (WMS) per combinare insieme dati provenienti da diversi hosts. I partners di NC OneMap stabiliscono un WMS dai loro servers. Questo standard OGC consente ai dati di essere creati e conservati in numerose configurazioni di software proprietari (ESRI, MapInfo, Intergraph, ecc.), ma essendo visibili da tutti."

Vedi anche:
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

Un Cookbook su WMS OGC e altro materiale per sviluppatori si trova qui http://www.opengeospatial.org/resource/cookbooks. 

Altri standards di servizi OGC sono rappresentati da: 
 

* :doc:`wfs_overview`
* :doc:`wcs_overview`
* Web Map Tile Service
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`

