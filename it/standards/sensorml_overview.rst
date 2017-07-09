.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:Translator: Margherita Di Leo
:License: Creative Commons

.. Writing Tip: 
  Project logos are stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/project_logos
  and accessed here:
    /images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: /images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: /images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Sensor Model Language (SensorML)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Lo standard di codifica OGC Sensor Model Language (SensorML) descrive un modello di informazione e codifiche XML che permettono la scoperta e la programmazione dei sensori integrati nel Web (Web-resident sensors), nonche` lo sfruttamento delle osservazioni dei sensori. In questo contesto, SensorML consente allo sviluppatore di definire modelli e schemi XML per descrivere qualsiasi processo, compresa la misurazione attraverso un sistema di sensori, nonche` l'elaborazione post-misurazione. (http://www.opengeospatial.org/standards/sensorml)

.. image:: /images/standards/sensorml.jpg
  :scale: 55%
  :alt: sensorML in Context

Più specificamente, SensorML puo`: 

* Fornire descrizioni di sensori e sistemi di sensori per la gestione dell'inventario;
* Fornire informazioni di processo e sensore a sostegno della scoperta della risorsa e dell'osservazione;
* Favorire l'elaborazione e l'analisi delle osservazioni del sensore;
* Favorire la geolocalizzazione dei valori osservati (dati misurati);
* Fornire le caratteristiche di prestazione (per es. precisione, soglia, ecc.);
* Fornire una descrizione esplicita dei processi tramite cui e` stata ottenuta una osservazione;
* Fornire una catena di processo eseguibile per derivare nuovi prodotti di dati a richiesta (per es. osservazione derivabile);
* Archiviare le proprieta` fondamentali e le assunzioni riguardanti i sistemi di sensori.

Lo schema individuale SensorML descrive uno specifico sensore o un vettore di sensori e puo` essere conservato in un registro.

Ci sono numerosi esempi di implementazioni di SensorML, come il programma NASA MSFC SMART (http://smartdev.itsc.uah.edu/casestudy/documents/paper_nstc_2007_A1P1.pdf). In tale progetto il gruppo ha sviluppato un flusso (workflow) di processo di sensori Web per assimilare intelligentemente la temperatura e l'umidita` dalla Sonda Infrarossa Atmosferica (Atmospheric Infrared Sounder) AIRS in una configurazione regionale del modello di ricerca e osservazione climatica sul sud est degli Stati Uniti.

Vedi anche
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`sos_overview`
* Sensor Planning Service
* Observations and Measurements
* Transducer Markup Language
