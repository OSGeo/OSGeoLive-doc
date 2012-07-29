:Author: Gérald Fenoy
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-Zoo.png
  :scale: 50 %
  :alt: Logo del progetto
  :align: right
  :target: http://zoo-project.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: OSGeo Incubation Project
  :align: right
  :target: http://www.osgeo.org

ZOO-Project
================================================================================

Server WPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ZOO-Project fornisce un ambiente di sviluppo amichevole di Web Processing 
Service (WPS) per creare e concatenare Web Processing Services.
Un WPS fornisce accesso web a funzione che eseguo algoritmi spaziali.
ZOO-Project supporta molti linguaggi di programmazione e viene distribuito
con due applicazioni demo usando semplici servizi di servizi spaziali
(una libreria shared in C e un modulo Python) basato sulle librerie GEOS and OGR.

ZOO è composto di tre parti:

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 40 %
  :alt: screenshot
  :align: right

*ZOO Kernel* : Un potente Kernel in C lato server che permette di
gestire e concatenare servizi Web scritti in diversi linguaggi di programmazione.

*ZOO Services* : A growing suite di esempi di servizi Web basati su
diverse librerie Open Source.

*ZOO API* : Una API JavaScript lato server in grado di chiamare e concatenare
ZOO Services, questo permette un semplice sistema di sviluppo e concatenamento. 

ZOO è basato su un 'WPS Service Kernel' che costituisce il motore 
del sistema ZOO (anche ZOO Kernel). The latter è in grado di caricare librerie
dinamiche e to handle them as on-demand Web services. Il ZOO Kernel è scritto in 
C, ma supporta molti linguaggi di sviluppo al fine di connettere numerose
librerie e di semplificare il lavoro degli sviluppatori dei Web service.

Un ZOO service è un collegamento composto da un file metadata (.zcfg) e il codice
per la corrispondente implementazione. Il file metadata descrive tutti i parametri
disponibili che possono essere chiamate usando una Richieste WPS Execute, come
gli input/output richiesti. I servizi contengono gli algoritmi e funzioni, 
e attualmente possono essere implementate in C/C++, Fortran, Java, Python, PHP
and JavaScript. 

Caratteristiche Principali
--------------------------------------------------------------------------------

* Multi linguaggio WPS server 
* Procedura semplice per lo sviluppo e creazione di Web Service
* Facile concatenamento di servizi WPS attraverso le ZOO API

Standards Implementati
--------------------------------------------------------------------------------

* OGC WPS 1.0.0

Demo
--------------------------------------------------------------------------------

* `Demo usando semplice C Services Provider basato sulle librerie GEOS e OGR <http://localhost/zoo-demo/spatialtools.html>`_
* `Demo usando semplice Python Services Provider basato sulle librerie GEOS e OGR <http://localhost/zoo-demo/spatialtools-py.html>`_
* `Semplice html form per eseguire la propria richiesta al ZOO Kernel <http://localhost/zoo-demo/spatialtools.html>`_


Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://zoo-project.org

**Licenza:** MIT x/11

**Versione Software:** 1.2.0

**Piattaforme Supportate:** Windows, Linux, Mac

**Linguaggi di Programmazione Supportati:** C, Python, Java, PHP, Fortran, Javascript

**Supporto:** http://zoo-project.org/trac


Presentazione veloce
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/zoo-project_quickstart>`


