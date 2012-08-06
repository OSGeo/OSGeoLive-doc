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

Web Processing Service (WPS)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Lo standard WPS fornisce le regole per la standardizzazione degli input e degli output (richieste e risposte) per i servizi di elaborazione di dati geospaziali, come la sovrapposizione di poligoni e i loro input e output. 

.. image:: ../../images/standards/wps.jpg
  :scale: 55%
  :alt: WPS in Context

Lo standard OGC® Web Processing Service (WPS) descrive come accedere ai processi geospaziali tramite un'interfaccia web. 
I processi includono qualsiasi algoritmo, calcolo o modello che opera su un dato raster o vettoriale spazialmente riferito. Un WPS puo` consentire calcoli semplici, come la sottrazione di un insieme di numeri da un altro (per esempio, determinare la differenza del numero di casi di influenza tra una stagione e un'altra), o complicati, come un modello globale di cambiamento climatico. (http://www.opengeospatial.org/standards/wps) 

Un WPS risulta particolarmente utile per:

* Ridurre la complessita` dell'elaborazione dei dati fornendo algoritmi di applicazione diretta (plug & play).
* Permettere la concatenazione di processi. 
* Permettere di dispiegare i processi una volta per poi essere utilizzati ovunque. 
* Manutenzione semplificata. I processi/modelli sono mantenuti in maniera centralizzata da parte di chi li implementa. 
* Sfruttare le capacita` computazionali ad alta velocita` di un server centralizzato. 
* Accesso semplice ed interoperabile a processi altamente complessi, come i modelli di cambiamento climatico.

Vedi anche
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

Other OGC data service standards: 

* Web Coverage Processing Service
* Sensor Planning Service
* :doc:`wcs_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
