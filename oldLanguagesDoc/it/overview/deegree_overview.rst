:Author: Johannes Wilden, Danilo Bretschneider
:Reviewer: Cameron Shorter, Jirotech
:Translator: Margherita Di Leo
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-deegree.png
  :alt: project logo
  :align: right
  :target: http://www.deegree.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


deegree
================================================================================

Servizi Web 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

deegree e` libero, potente, stabile e semplice da usare. degree e`  
il set più completo di implementazioni degli standard Open Geospatial
Consortium (OGC) nel software libero, andando
da un Web Feature Service transazionale a visualizzare dati tridimensionali
tramite un Web Terrain Service e molto altro!

deegree è una soluzione per i desktop e web GIS
(Sistemi Informativi Geografici) e le infrastrutture di dati spaziali
(SDI). Si compone di un'applicazione completa e potente Java
Programming Interface (API) e un potente object-relational mapping per
schemi spaziali semplici e complessi. deegree fornisce inoltre un insieme di
servizi web per il web mapping conformi agli standard, servizi di features e catalogo, 
nonché i servizi di sensori e di elaborazione.

deegree rende il vostro SDI installato e funzionante, utilizzando i vostri dati e 
soddisfacendo le vostre esigenze.

.. image:: /images/screenshots/deegree/deegree_mainpage.png
  :scale: 50%
  :alt: project logo
  :align: right

Alcuni esempi di funzioni
--------------------------------------------------------------------------------

* Web Map Service

  * Molto flessibile riguardo al contenuto dei layer 
  * Supporta e utilizza le definizioni di stile (SLD 1.0)
  * Funzionalità di mapping tematici attraverso grafici (a torta, a barre, a linee) e simbologia puntuale 
  * Fonti di dati: tutti i più diffusi servizi web OGC (WMS, WFS, WCS), PostgreSQL / PostGIS, Oracle Spatial, tutte le istruzioni SQL arbitrarie possono essere utilizzati per creare il contenuto del layer WMS
  * Molto stabile, anche alle scale grandi 
  * Supporta i protocolli HTTP GET, POST HTTP e richieste di informazioni sugli oggetti 
  * Certificato per essere compatibile OGC

* Web Feature Service

  * Supporta oggetti semplici e complessi 
  * Trasformazione di coordinate al volo (on the fly) per piu` di 3000 sistemi di riferimento 
  * Supporta formati di output flessibili 
  * Facilmente potenziato per supportare la direttiva INSPIRE 

* Web Coverage Service

  * Supporta le richieste HTTP GET e HTTP POST 
  * Fonti di dati: immagini (tif, png, jpeg, gif, bmp); GeoTIFF; file ECW; Oracle GeoRaster
  * Accesso veloce alle coperture vaste 

* Catalogue Service

  * Fonti di dati: PostgreSQL-Database; Oracle-Database
  * Richieste supportate: GetCapabilities; DescribeRecord; GetRecordById; GetRecords; Transaction - Insert, Update, Delete; Harvesting

* Web Map Print Service

  * Supporta diversi formati di stampa (HTML, PDF, PNG)
  * Lavori che richiedono esecuzione lunga 
  * Supporta richieste asincrone per abilitare grafici a larga scala 
  * Le richieste sono conservate all'interno di un database e sono rese disponibili anche se il WMPS e` stato interrotto dall'amministratore o il la macchina fallisce 

* Web Perspective View Service

  * Fonti di dati: remote/local-WMS, remote/local-WFS, local-WCS, Postgres/PostGIS, Oracle Spatial
  * I modelli di elevazione possono essere vettoriali o raster 
  * Richieste: Get3DFeatureInfo, GetView


Standard implementati 
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 in progress)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 in progress)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; compreso OGC ISOAP 1.0 e profilo INSPIRE 
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

Dettagli
--------------------------------------------------------------------------------

**Sito web:** http://www.deegree.org

**Licenza:** LGPL

**Versione software:** |version-deegree|

**Piattaforme supportate:** Windows, Linux

**Interfacce API:** Java

**Supporto:** http://wiki.deegree.org/deegreeWiki/GettingSupport


Guida rapida
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/deegree_quickstart>`
