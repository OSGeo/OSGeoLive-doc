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

Geography Markup Language (GML)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

GML (http://www.opengeospatial.org/standards/gml) e` una grammatica XML definita per esprimere e comunicare gli oggetti geografici (features). GML serve come linguaggio di modellazione per sistemi geografici ma anche come un formato aperto di interscambio per transazioni geografiche via Internet. Da notare che il concetto di "feature" in GML e` molto generale e comprende non solo il "vettoriale" convenzionale, ma anche le coperture e alcuni elementi di dati di sensori. La capacita` di integrare tutte le forme di informazione geografica e` la chiave dell'utilita` di GML.

.. image:: ../../images/standards/gml.jpg
  :scale: 55%
  :alt: GML in Context

GML contiene un ricco insieme di primitive che vengono usate per costruire schemi specifici di applicazione o linguaggi di applicazione. Tali primitive comprendono:

* Oggetto (Feature)
* Geometria
* Sistema di riferimento geografico (Coordinate Reference System, o CRS)
* Topologia
* Tempo
* Oggetto (feature) dinamico 
* Copertura (comprese le immagini geografiche)
* Unita` di misura 
* Direzioni
* Osservazioni 
* Regole di stile di presentazione della mappa 

Comprendere l'uso di "Features", "Geometria" e "CRS" e` critico nell'uso e nello sviluppo di una codifica basata su GML. 

Il lavoro di OGC sullo standard GML e` cominciato nel 1998. GML e` stato approvato formalmente per la prima volta nel 2001. GML e` diventato uno standard ISO nel 2007. GML 3.2.16 e` la revisione piu` recente dello standard comune OGC-ISO. Le versioni 3.2.2 e 4.0 sono attualmente in sviluppo.

Vedi anche
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* CityGML
* GeosciML
* GML in JPEG 2000
* :doc:`wfs_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* :doc:`fe_overview`
