
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

Web Feature Service (WFS)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Lo standard di interfaccia OGC® Web Feature Service (WFS) definisce operazioni di interfaccia web per la query e l'editing di features vettoriali, come strade o linee di contorno di laghi.  (http://www.opengeospatial.org/standards/wfs)

.. image:: ../../images/standards/wfs.jpg
  :scale: 55%
  :alt: WFS in Context

Lo standard WFS definisce le operazioni che consentono ai clients di: 

* Scoprire la collezione delle feature disponibili (GetCapabilities)
* Descrivere i campi di attributo disponibili per le features (DescribeFeatureType)
* Effettuare una query su una collezione per un sottoinsieme di features in base a un dato filtro (GetFeature)
* Aggiungere, modificare o cancellare le features (Transaction)

Tutti i WFS supportano l'input e l'output dei dati usando il linguaggio di markup "Geography Markup Language" (GML). Alcuni WFS supportano anche altre codifiche, come GeoRSS o shapefiles.

Gli utenti tipicamente interagiscono con i WFS attraverso il browser o dei client desktop geografici, che consentono loro di accedere ai layers vettoriali da organismi esterni, attraverso internet. Un esempio eccellente di uso del servizio WFS per fornire l'accesso aperto e interoperabile a grandi quantita` di contenuti geospaziali attraverso un portale governativo e` il USGS Framework Web Feature Services offerto a supporto dello sviluppo dell'infrastruttura "National Spatial Data Infrastructure" (NSDI) (http://frameworkwfs.usgs.gov/). Alcuni layers selezionati di questo framework americano sono disponibili come layers WFS e sono disponibili anche attraverso un'interfaccia browser fornita dal USGS.

See Also
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`wms_overview`
* :doc:`wcs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`
