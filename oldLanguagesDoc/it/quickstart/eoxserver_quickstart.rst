:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Angelos Tzotsos
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

================================================================================
Guida rapida su EOxServer
================================================================================

Overview
--------

EOxServer è un server per rappresentare grandi archivi di dati Earth Observation (EO)
e matadati attraverso Open Standards. È creato su un gruppo di software open source
che include Python, :doc:`MapServer <../overview/mapserver_overview>`, Django/GeoDjango,
:doc:`GDAL <../overview/gdal_overview>`, PROJ.4 e una database :doc:`SpatiaLite <../overview/spatialite_overview>`
o :doc:`PostGIS <../overview/postgis_overview>`.

Questa guida rapida descrive come:

* Visualizzare, filtrare, crea subset, e scaricare dati EO attraverso EOxServer's Web Client
* Registrare archivi di dati EO attraverso EOxServer's Admin Client

.. contents:: Contents

Per maggiori informazioni vedere :doc:`EOxServer Overview <../overview/eoxserver_overview>`,
la `documentazione in locale di EOxServer <../../eoxserver-docs/EOxServer_documentation.pdf>`_,
o la `documentazione online di EOxServer <http://eoxserver.org/doc/>`_.

.. image:: /images/screenshots/eoxserver/eoxserver_documentation.png
  :scale: 50 %
  :alt: EOxServer documentation

Demonstration Instance
------------------------

.. Commentato visto che Tomcat non si avvia più automaticamente (#1032)
   Nel caso la vostra OSGeoLive ha 1GB di RAM o meno si raccomanda di fermare il servizio
   di Tomcat prima di lanciare EOxServer
   ::

     sudo service tomcat6 stop

L'icona `EOxServer` che si trova sotto `Web Services` lancia un browser che visualizza
l'esempio dimostrativo disponibile all'indirizzo http://localhost/eoxserver/
che fornisce alcuni dati di prova come `disponibile online
<https://eoxserver.org/demo_stable/>`_.

.. image:: /images/screenshots/eoxserver/eoxserver_start.png
  :scale: 50 %
  :alt: EOxServer demonstration start

Client Web
~~~~~~~~~~~~~~~~~~

Il link al **Web Client** permette di vedere una lista di `Serie di dati` disponibili
e `Stitched Mosaics`. L'esempio ha una `Serie di dati` già configurata denominata
"MER FRS 1P RGB reduced" che contiene tre scene ENVISAT MERIS. Riferirsi alla `documentazione
online per l'esempio <http://eoxserver.org/doc/en/users/demonstration.html>`_ per maggiori
informazioni sui dati disponibili.

.. image:: /images/screenshots/eoxserver/eoxserver_webclient1.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client dataset series selection

Selezionando una lista di provider si visualizzeranno i contorni dei `Dataset` disponibili.

.. image:: /images/screenshots/eoxserver/eoxserver_webclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

Usando i controlli standard di OpenLayers sarete in grado anche di vedere in anteprima i
dati disponibili.Cliccare su **(+** in alto a destra della finestra per ottenere
un'ulteriore lista di selezione; per effeuare zoom è possibile usare sia la rotellina del
mouse oppure tenendo premuto il pulsante shift mentre tenendo premuto il
pulsante destro si disegna un box nell'area della map.

.. image:: /images/screenshots/eoxserver/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines and previews

With the **Date slider** the `Datasets` shown can be limited to the time
interval of interest.

.. image:: /images/screenshots/eoxserver/eoxserver_webclient3.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client date change

Il pulsante **Download** fornisce una lista dei `Datasets` scaricabili.
Scaricabili significa che la Bounding Box impostata o l'estension della mappa attuale
se non è impostata e l'intervallo di tempo impostato. Potete selezionare quale `Datasets`
da scaricare in che dimensione, proiezione, formato e sottoinsieme di bande.

.. image:: /images/screenshots/eoxserver/eoxserver_webclient4.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client download selection

**Start Download** inzia lo scaricamento attuale che può ottenere multipli file
se multipli `Dataset` sono stati selezionati.

.. image:: /images/screenshots/eoxserver/eoxserver_webclient5.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client download

Client di amministrazione
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Il link **Client di amministrazione** vi porterà alla pagina di accesso per il
`Client di amministrazione` La password per l'utente `admin` è `admin`.

.. image:: /images/screenshots/eoxserver/eoxserver_adminclient1.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client login

Il `Client di amministrazione` è un client standard di amministrazione di Djangos
che vi permetterà di configurare i dati disponibili. Sentitevi liberi di
esplorare il client come più vi piace. Maggiori informazioni possono essere
trovate nella `guida degli operatori
<http://eoxserver.org/doc/en/users/operators.html>`_.

.. image:: /images/screenshots/eoxserver/eoxserver_adminclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client start

Per esempio è possibile visualizzare e modificare i `Metadati di EO` delle
`Serie di dati` configurate.

.. image:: /images/screenshots/eoxserver/eoxserver_adminclient3.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client EO Metadata

Visualizzatore dei log
~~~~~~~~~~~~~~~~~~~~~~~~

Il link al **visualizzatore dei log** fornisce una semplice via per visualizzare
gli ultimi log registrati.

.. image:: /images/screenshots/eoxserver/eoxserver_logviewer.png
  :scale: 50 %
  :alt: EOxServer demonstration log viewer

Ed ora?
----------

Questa è un semplice esempio, but potete fare molto di più con EOxServer. Il sito
web del progetto contiene molte risorse per aiutarvi ad incominciare. Qui alcune
risorse da controllare dopo aver letto questa guida:

* Leggere la `Guida per gli operatori di EOxServer
  <http://eoxserver.org/doc/en/users/operators.html>`_.
* Leggere la `documentazione completa per gli utenti di EOxServer
  <http://eoxserver.org/doc/en/users/index.html>`_ incominciando da le
  `basi di EOxServer <http://eoxserver.org/doc/en/users/basics.html>`_.
* Pronti a usare EOxServer? Quindi unitevi alla comunità attraverso le
  `mailing lists <http://eoxserver.org/doc/en/users/mailing_lists.html>`_
  per scambiare idee, discutere potenziali miglioramenti del software e
  fare domande.
