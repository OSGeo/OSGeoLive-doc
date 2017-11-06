:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: TBD
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos
  
********************************************************************************
Guida rapida su 52°North SOS 
********************************************************************************

Come incominciare
================================================================================

52°North SOS è un servizio web, che vi permette di fornire e archiviare dati spaziali di
sensori (includendo i metadati e le misurazioni/osservazioni).

1) Andate in :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North SOS`
per avviare 52°North SOS o usate questo `collegamento diretto <http://localhost:8080/52nSOS/>`_.
(Se il servizio non è raggiungibile, provare ad avviare il servlet Tomcat seguendo i passaggi
in fondo alla pagina.)

2) Firefox aprirà la pagina principale del client di test 52°North SOS (vedere Fiq. 1). 
Selezionare la versione che vorrete usare, 1.0.0 per esempio:

.. image:: /images/projects/52nSOS/52n_sos_test_client_start.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client welcome page
  :align: center

**Fig. 1**: 52°North SOS test client - welcome page

3) Il client di test apparirà. Può essere usato per spedire richieste al server usando semplici form.
Un menù a tendina vi permetterà di selezionarne una da una collezione di richieste predefinite,
che sono adottate dalle rispettive versioni del servizio selezionato nel passaggio precedente.

.. image:: /images/projects/52nSOS/52n_sos_test_client_v1_0_0_GetCapabilities.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: center
  
**Fig. 2**: 52°North SOS test client - specification version 1.0.0 
  
4) Per incominciare con il SOS, selezionate la richiesta GetCapabilities_allSections.xml dalla lista
a tendina dopo "Request Examples" (see number [1] in Fig. 2).
  
5) Premete il **bottone Send** (numero [2] in Fig. 2) e la richiesta sarà trasmessa a 52°North SOS.
Come risultato, un documento XML sarà ritornato (vedere Fig. 3), che mostra le capacità del SOS (
i metadati del servizio parole chiave o il fornitore, operazioni disponibili e filtri, dati delle
osservazioni contenute,...). Per vedere la risposta originale aprire la sorgente (Ctrl+U).

.. image:: /images/projects/52nSOS/52n_sos_response.png
  :scale: 70 %
  :alt: screenshot of 52°North SOS output - GetCapabilities response encoded in XML
  :align: center
  
**Fig. 3**: 52°North SOS - GetCapabilities response (XML encoded)
  
6) Al fine di costruire la vostra richiesta dovrete ottenere le `capacità <http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_  di
52°North SOS (specifica 1.0.0). Usando le informazioni fornite nelle capacità, e maggiormente nella
sezione dei contenuti, potete adeguare le richieste al server nel client di test. Basta selezionare
una richiesta GetObservation (GetObs...) dal menù a tendina e usarlo come template per richiesre
il vostro sottoinsieme di osservazioni.

Ulteriori informazioni
================================================================================

Per imparare di più su 52°North SOS e/o la comunità 52°North Sensor Web, punti di partenza potenziali sono:

* La 52°North :doc:`SOS overview <../overview/52nSOS_overview>`,
* La mailing list 52°North Sensor Web: swe@52north.org, 
* Controllate il `forum della comunità <http://sensorweb.forum.52north.org/>`_ 52°North Sensor Web , 
* Controllate il 52°North `SOS Client <http://sensorweb.demo.52north.org/SOSclient/>`_,
* `Il sito 52°North SOS <http://52north.org/communities/sensorweb/sos/>`_, o
* Il sito internate della `comunità 52°North Sensor Web <http://52north.org/communities/sensorweb/>`_.

* Quando il SOS non è disponibile, controllate se il servlet tomcat sta girando usando i seguenti comandi:

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat is running
  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat not runing, so please start:
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- Tomcat is running, now
  
**Listing 1:** Tomcat Status and Start (password for sudo: user)

* Lo sviluppo di questa versione di 52°North SOS è stata supportata dal progetto di ricerca europeo FP7 `EO2HEAVEN <http://www.eo2heaven.org/>`_ (co-finanziato dalla Commissione Europea sotto la convenzione di sovvenzione n°244100):

.. image:: /images/project_logos/logo_52North_other_200px.png
  :scale: 100 %
  :alt: EO2HEAVEN - Earth Observation and ENVironmental Modeling for the Mitigation of HEAlth Risks
  :align: center
  :target: http://www.eo2heaven.org/
