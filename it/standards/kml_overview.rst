.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
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

KML Encoding Standard (KML)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Lo standard di codifica OGC KML e` un linguaggio XML concentrato sulla visualizzazione geografica, comprese annotazioni di mappe e immagini. La visualizzazione geografica comprende non solo la presentazione dei dati geografici sul globo, ma anche il controllo della navigazione dell'utente nel senso di dove andare e dove guardare. (http://www.opengeospatial.org/standards/KML)

.. image:: ../../images/standards/kml.jpg
  :scale: 55%
  :alt: KML in Context

Nel 2006, Google ha presentato KML (precedentemente Keyhole Markup Language) all'OGC affinche` lo valutasse come standard. KML e` stato la prima istanza di uno standard de-facto, essendo stato presentato a OGC per una procedura di standardizzazione e pertanto OGC ha modificato la procedura di approvazione degli standard per accogliere gli standard che sono stati sviluppati esternamente a OGC e successivamente presentati alla procedura OGC. Gli obiettivi di questo lavoro di standard erano quattro:

* Che ci fosse un linguaggio standard internazionale per esprimere le annotazioni geografiche e la visualizzazione su mappe (2D) online basate sul web e browser della Terra (3D) esistenti o futuri .
* Che KML fosse allineato con le linee guida e gli standard internazionali, consentendo in tal modo una maggiore diffusione ed interoperabilità delle implementazioni browser della Terra. 
* Che le community di OGC e di KML lavorassero in maniera collaborativa per assicurare che gli implementatori di KML fossero correttamente occupati nella procedura e che la community KML fosse informata riguardo ai progressi e ai problemi.
* Che la procedura OGC venga usata per assicurare una corretta gestione del ciclo di vita delle specifiche candidate KML, compresi i problemi come la compatibilita` all'indietro.

KML e` stato approvato come standard OGC nel 2008 perche` i Membri hanno creduto che avere KML come standard OGC avrebbe incoraggiato una piu` ampia implementazione e una maggiore interoperabilita` e la condivisione del contesto e contenuto dei browser della Terra.

KML e` complementare alla maggior parte delle specifiche OGC esistenti, compresi standard chiave quali GML (Geography Markup Language), WFS (Web Feature Service) e WMS (Web Map Service). Attualmente, KML (v2.1) usa alcuni elementi geometrici derivati da GML (versione 2.1.2). Tali elementi includono punto, linea-stringa, linea-anello e poligono.

Vedi anche
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`gml_overview`
* :doc:`wfs_overview`
