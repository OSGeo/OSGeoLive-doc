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

Sensor Observation Service (SOS)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Lo standard di interfaccia OGC Sensor Observation Service (SOS) e` un servizio di dati. Lo standard OGC SOS definisce un'interfaccia e delle operazioni standardizzate per l'accesso alle osservazioni da sensori e sistemi sensoristici, che siano coerenti per tutti i sistemi sensoristici, quali sensori remoti, in-situ, fissi e mobili. SOS fornisce i risultati delle interrogazioni nel formato standard Observation and Measurements (O&M) per elaborare le osservazioni dei sensori e la specifica SensorML per elaborare i sensori e i sistemi sensoristici. (http://www.opengeospatial.org/standards/sos)

.. image:: ../../images/standards/sos.jpg
  :scale: 55%
  :alt: SOS in Context

Lo standard SOS definisce un modello comune per i sensori e i sistemi sensoristici che non e` specifico di dominio e puo` essere utilizzato senza una conoscenza a priori dello schema dell'applicazione specifica di dominio. 

Un'osservazione e` un evento il cui risultato e` una stima del valore di alcune proprieta` della caratteristica di interesse, ottenuta utilizzando una procedura specifica. Le osservazioni sono definite da: 

* eventTime – quando e` stata effettuata la misura 
* featureOfInterest – quale entita` e` stata misurata 
* observedProperty – quale caratteristica e` stata misurata 
* procedure – come e` stata misurata

Le operazioni SOS obbligatorie comprendono:

* GetObservation – accede alle osservazioni del sensore e ai dati misurati tramite un'interrogazione spazio-temporale che puo` essere filtrata per fenomeno 
* GetCapabilities – servizio metadati SOS 
* DescribeSensor – informazioni sui sensori, i loro processi e piattaforme in SensorML

Le operazioni opzionali comprendono: GetResult, GetFeatureOfInterest, GetFeatureOfInterestTime, DescribeFeatureofInterest, DescribeObservationType, DescribeResultModel, Register Sensor, e InsertObservation.

.. Link below is a dead link, so we have commented out this paragraph
.. There are numerous excellent implementations of SOS. The OpenIOOS.org has thirteen organizations providing SOS service instances providing access to over 1400 oceans sensors (http://www.openioos.org/real_time_data/gm_sos.html). This operational demonstration “represents an effort to develop a Web Services Architecture for Ocean Observing”.

Vedi anche
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`wcs_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* Sensor Planning Service
* Coordinate Transformation Service

