:Author: Astrid Emde
:Translator: Diego Migliavacca
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-Mapbender3.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapbender3.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 90 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


Mapbender
================================================================================

Framework per geoportali
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Mapbender <http://mapbender3.org/en>`_ é un progetto ufficiale di OSGeo. Mapbender é un framework web per pubblicare, registrare, vedere, navigare, monitorare e consentire l'accesso sicuro a servizi SDI (spatial data infrastructures - infrastrutture di dati spaziali).

Mapbender é la cosiddetta punta dell'iceberg, uno strato software in grado di fornire accesso a componenti di SDI aderendo agli standards internazionali. Mapbender permette agli utenti di creare, in modo semplice, dei client personalizzati attraverso una ampia gamma di widgets, (senza nessuna o con una minima) richiesta di scrittura di codice. Questi widgets si integrano con funzionalità lato server per fornire funzionalità avanzate come security proxying, digitizing, auto snapping e altro.

Le applicazioni amministrate con Mapbender sono facili da usare, e forniscono funzionalità fortemente dirette all'operatività su componenti SDI distribuiti su larga scala. Esso é uno strumento utile ad amministratori di SDI che hanno bisogno di mantenere, classificare e monitorare servizi relativi a mappe (map services) e ad oggetti geografici (feature services). Mapbender garantisce l'accesso a persone, gruppi e gestisce anche l'accesso da parte di altri servizi. L'aderenza a servizi standardizzati, come ad es. OGC WMS, permette di beneficiare dei servizi interoperabili forniti da una moltitudine di piattaforme server.

Il software Mapbender3 si basa su Symfony2 e OpenLayers, Mapproxy e jQuery. 

.. image:: ../../images/screenshots/800x600/mapbender3_basic_application.png
  :scale: 70%
  :alt: Mapbender application
  :align: right


Funzionalità di base
--------------------------------------------------------------------------------

* Creare facilmente interfacce per il web mapping attraverso l'uso di templates  

  * aggiungere/rimuovere/personalizzare applicazioni

* Caricare e condividere servizi OGC WMS remoti (capabilities caching) 

  * ordinare per copertura (overlay) i servizi WMS caricati
  * modificare la visibilità dei layers
  * ordinare i layers
  * scegliere il formato dei layers
* Creare utenti e gruppi, condividere e garantire l'accesso a servizi e componenti
* Restringere l'accesso a utenti attraverso il modulo OWS security proxy via trusted servers
* Protocolli criptati, monitoraggio e notifica dello stato, e servizio di auto-aggiornamento per servizi OGC remoti
* Stampare mappe di alta qualità utilizzando i propri template PDF.
* ... e altro ancora!

Standards Implementati
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.1, 1.3.0

Dettagli
--------------------------------------------------------------------------------

**Sito web:** http://mapbender3.org/

**Licenza:** Doppia licenza sotto la GNU General Public License e la Simplified BSD license
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/gpl.txt  
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/simplified_bsd.txt

**Versione software:** 3.0.3.2

**Piattaforme Supportate:** Windows, Linux, Mac

**Supporto:** http://www.mapbender3.org/en/community


Guida rapida
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/mapbender_quickstart>`
