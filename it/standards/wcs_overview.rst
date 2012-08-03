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

Web Coverage Service (WCS)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Lo standard OGC® Web Coverage Service (WCS) definisce un'interfaccia standard e le operazioni che consentono l'accesso interoperabile alle "coperture" (coverages) geografiche. Il termine "grigliato di copertura" (grid coverage) tipicamente si riferisce a contenuti quali immagini satellitari, foto aeree digitali, dati digitali di elevazione, ed altri fenomeni rappresentati attraverso valori in ciascun punto di misura. (http://www.opengeospatial.org/standards/wcs)

.. image:: ../../images/standards/wcs.jpg
  :scale: 55%
  :alt: WCS in Context

Lo standard OGC® Web Coverage Service (WCS) e` un servizio dati. Lo standard WCS definisce un servizio di accesso ai dati che permette di effettuare query sulle coperture, come i modelli digitali del terreno, usando un'interfaccia basata su HTTP. La risposta ad una richiesta WCS comprende il metadato della copertura e una copertura in output i cui pixel sono codificati in uno specifico formato binario, come GeoTIFF o NetCDF. 

Come per altri standard OGC, esistono numerosi esempi eccellenti di implementazioni di WCS. Un esempio e` il NDBC High Frequency (HF) Radar Web Coverage Service (WCS), sviluppato e distribuito dal US National Ocean and Atmospheric Administration (NOAA) (http://hfradar.ndbc.noaa.gov/). HF Radar e` utilizzato per misurare da remoto le correnti superficiali oceaniche. Un altro e` il WCS National Aeronautical and Space Administration (NASA) per accedere ai dati di Atmospheric Infrared Sounder (AIRS) (http://idn.ceos.org/KeywordSearch/Metadata.do?Portal=webservices&KeywordPath=[Project%3A+Short_Name%3D%27EOS%27]&EntryId=NASA_GES_DISC_AIRS_Atmosphere_Data_Web_Coverage_Service&MetadataView=Full&MetadataType=1&lbnode=mdlb1). Questo e` uno dei sistemi di dati Goddard Earth che costituisce un'istanza OGC WCS del Information Service Center, che fornisce prodotti di dati atmosferici di Livello 3 derivati dai dati AIRS come generati a bordo della navicella spaziale Aqua della NASA.

Vedi anche
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`fe_overview`
