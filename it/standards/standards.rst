:Translator: Margherita Di Leo

.. Geospatial Standards documentation master file, created by
   sphinx-quickstart on Mon Jul 19 08:52:52 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Open Geospatial Consortium Standards
================================================================================

Introduzione
--------------------------------------------------------------------------------
L'Open Geospatial Consortium (OGC) e` stato fondato nel 1994 per rendere l'informazione geografica parte integrante dell'infrastruttura informativa mondiale. I membri dell'OGC - fornitori di tecnologia e utenti - sviluppano in maniera collaborativa standards di interfaccia aperti e standards di codifica associati, e anche linee guida, che consentono agli sviluppatori di creare sistemi informativi che possando facilmente scambiare le informazioni "geografiche" e le istruzioni con altri sistemi informativi. I requisiti si estendono dalla pianificazione complessa e il controllo di satelliti di osservazione della Terra alla visualizzazione di immagini di semplici mappe sul Web e la posizione codificata in pochi byte per il geo-tagging e la messaggistica. Un'occhiata ai Domain Working Groups di OGC (http://www.opengeospatial.org/projects/groups/wg) mostra l'ampia portata delle attuali attivita` nell'OGC.

OGC Baseline e OGC Reference Model
--------------------------------------------------------------------------------

L'OGC Standards Baseline consiste negli standards OGC (http://www.opengeospatial.org/standards) per l'interfaccia, la codifica, i profili, gli schemi di applicazione, e i documenti di linee guida. L'OGC Reference Model (ORM) (http://www.opengeospatial.org/standards/orm) descrive questi standards e le relazioni tra essi e i relativi standards ISO. L'ORM fornisce una panoramica degli standards OGC e costituisce una risorsa utile per definire le architetture per applicazioni specifiche. 

Nello sviluppo di un'applicazione di servizi Web, utilizzare gli standard OGC (e conoscendo le relazioni tra gli standard OGC) aiuta a pensare di pubblicare, trovare e associare le funzioni chiave per le applicazioni in un ambiente di servizi Web.

* Pubblicare: I fornitori di risorse pubblicizzano le loro risorse.
* Trovare: Gli utenti finali e le loro applicazioni possono scoprire le risorse di cui hanno bisogno in fase di esecuzione.
* Associare: Gli utenti finali e le loro applicazioni possono accedere e mettere in pratica le risorse in fase di esecuzione.

La maggior parte degli standards OGC sviluppati negli ultimi anni sono standards per l'ambiente dei servizi Web, e sono indicati collettivamente come OGC Web Services (OWS). La figura seguente mostra uno schema dell'architettura generale dei servizi Web OGC. Questo schema identifica le classi generiche di servizi che partecipano a varie attività di geoprocessing e di posizione.


.. figure:: ../../images/standards/publish_find_bind.jpg
  :scale: 55%
  :alt: Web services framework of OGC geoprocessing standards

Gli acronimi nella figura sono definiti di seguito. Alcuni di essi sono "Standards OGC" e altri sono "Articoli di discussione", "Richieste" e "Articoli di riferimento" disponibili pubblicamente. (Notare che alcuni candidati standards in opera non sono ancora pubblici, ma sono accessibili ai membri OGC.)

.. add all standard overview documents to the toc and add all others right behind

.. toctree::
   :maxdepth: 1
   :glob:
   
   *_overview

* Sensor Planning Service (SPS)
* Web Terrain Service (WTS)
* Grid Coverage Service
* Coordinate Transformation Service
* Web Coverage Processing Service (WCPS)
* Web Map Tile Service (WMTS)
* Simple Features (SF)
* Sensor Web Enablement (SWE)
* XML for Image and Map Annotation (XIMA)
* CityGML
* GeosciML
* GML in JPEG 2000
* Observations and Measurements (O&M)
* Symbology Encoding
* Transducer Markup Language (TML)


.. links to standards
  * :doc:`wms_overview` (http://www.opengeospatial.org/standards/wms)
  * :doc:`wfs_overview` (http://www.opengeospatial.org/standards/wfs)
  * :doc:`wcs_overview` (http://www.opengeospatial.org/standards/wcs)
  * :doc:`wps_overview` (http://www.opengeospatial.org/standards/wps)
  * :doc:`csw_overview` (http://www.opengeospatial.org/standards/specifications/catalog)
  * :doc:`sos_overview` (http://www.opengeospatial.org/standards/sos)
  * Sensor Model Language (SensorML) (http://www.opengeospatial.org/standards/sensorml) 
  * Sensor Planning Service (SPS) (http://www.opengeospatial.org/standards/sps)
  * Web Terrain Service (WTS) (http://portal.opengeospatial.org/files/?artifact_id=1072)
  * Grid Coverage Service (http://www.opengeospatial.org/standards/gc)
  * Coordinate Transformation Service (http://www.opengeospatial.org/standards/ct)
  * Web Coverage Processing Service (WCPS) (http://www.opengeospatial.org/standards/wcps)
  * Web Map Tile Service (WMTS) (http://www.opengeospatial.org/standards/wmts)
  * :doc:`gml_overview` (http://www.opengeospatial.org/standards/gml) 
  * :doc:`kml_overview` (http://www.opengeospatial.org/standards/kml)
  * :doc:`sensorml_overview` (http://www.opengeospatial.org/standards/sensorml)
  * Styled Layer Descriptor (SLD) (http://www.opengeospatial.org/standards/sfc) 
  * Filter Encoding (http://www.opengeospatial.org/standards/filter)
  * Simple Features (SF) (http://www.opengeospatial.org/standards/sfa) 
  * Sensor Web Enablement (SWE) (http://www.opengeospatial.org/ogc/markets-technologies/swe)
  * XML for Image and Map Annotation (XIMA) (http://portal.opengeospatial.org/files/?artifact_id=1020) 
  * CityGML (http://www.opengeospatial.org/standards/citygml)
  * GeosciML (http://www.geosciml.org/)
  * GML in JPEG 2000 (http://www.opengeospatial.org/standards/gmljp2)
  * Observations and Measurements (O&M) (http://www.opengeospatial.org/standards/om)
  * Symbology Encoding (http://www.opengeospatial.org/standards/symbol)
  * Transducer Markup Language (TML) (http://www.opengeospatial.org/standards/tml)

Vedi anche:
--------------------------------------------------------------------------------

* Lista completa degli standards OGC: http://www.opengeospatial.org/standards/
* Tutorials OGC presentati a IGARSS 2010: http://www.ogcnetwork.net/node/1481 
* OGC Network Learn pages (http://www.ogcnetwork.net/learn).
