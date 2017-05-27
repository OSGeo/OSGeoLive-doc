:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Daniel Nüst (d.nuest@52north.org)
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52°North SOS
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

52°North :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` supporta 
la lettura dei dati in tempo reale e archiviati catturati da sensori in-situ e remoti. 
Un sensore può essere un camera su un satellite o un misuratore del livello dell'acqua
in un fiume.
 
.. image:: ../../images/screenshots/1024x768/52n_sos_overview.png
  :scale: 60 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: right

Caratteristiche
--------------------------------------------------------------------------------

* Implementa gli standard SOS 1.0.0 e 2.0.0.

* Un client basato su browser offre gli strumenti per l'amministrazione e la configurazione dell'istanza del servizio. Inoltre, sono previste le query di prova per tutte le operazioni supportate.


OGC SOS 1.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Operazioni principali SOS**:

* GetCapabilities, per richiedere una descrisione del servizio stesso.
* GetObservation, per richiedere i dati del sensor codificati in Observations & Measurements (O&M).
* DescribeSensor, per richiedere meta informazioni sul sensore stesso, codificati in un 
  documento Sensor Model Language (SensorML).

**Operazioni Transazionali SOS**:

* RegisterSensor, per registrare un nuovo sensore.
* InsertObservation, per inserire una nuova registrazione un sensore già registrato.

**Operazioni Addizionali SOS**:

* GetResult, per facilitare le estrazioni periodiche dei dati.
* GetObservationById, per ricevere specifiche osservazioni individuali.
* GetFeatureOfInterest, per richiedere la rappresentazione dell'elemento di riferimento
  dell'osservazione codificato in GML.
* GetFeatureOfInterestTime, per determinare la disponibilità temporale dei dati del sensore.

OGC SOS 2.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* GetCapabilities, per richiedere una descrizione del servizio stesso.
* GetObservation, per richiedere i dati del sensor codificati in Observations & Measurements (O&M).
* DescribeSensor, per richiedere meta informazioni sul sensore stesso, codificati in un 
  documento Sensor Model Language (SensorML).
* GetFeatureOfInterest, per richiedere la rappresentazione dell'elemento di riferimento
  dell'osservazione codificato in GML.
  
Con queste richieste i seguenti operatori di filtro sono possibili:

* Filtro spaziale: BBOX, usando una bounding box.
* Filtro Temporale: During, con il periodo di tempo.
* Filtro Temporale: TEquals, con l'instante di tempo.

Standard Correlati
--------------------------------------------------------------------------------

* :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>`
* :doc:`Geography Markup Language (GML) <../standards/gml_overview>`
* :doc:`Sensor Model Language (SensorML) <../standards/sensorml_overview>`

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://52north.org/communities/sensorweb/sos

**Licenza:** GNU General Public License (GPL) version 2

**Versione Software:** SOS |version-52nSOS|

**Piattaforme Supportate:** Windows, Linux, Mac

**Interfacce API:** Java

**Supporto Commerciale:** http://52north.org/

**Supporto della Comunità:** http://sensorweb.forum.52north.org/

**Sito Web della Comunità:** http://52north.org/communities/sensorweb/

**Altri progetti 52°North:** :doc:`WPS <./52nWPS_overview>` 

Guida rapida
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/52nSOS_quickstart>`

