:Author: Oliver Tonnhofer
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

.. image:: /images/logos/OSGeo_community.png
  :scale: 100
  :alt: OSGeo Community Project
  :align: right
  :target: http://www.osgeo.org

Guida rapida su MapProxy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapProxy è *il* coltello svizzero per tutti i servizi WMS e tile.
Può fare caches, accelerare e transformare i dati da un esistente servizio e servire 
ogni client GIS desktop or web.

.. image:: /images/screenshots/mapproxy/mapproxy.png
  :alt: MapProxy diagram
  :align: center

MapProxy è non solo una soluzione di tile cache, ma offre anche molte caratteristiche 
nuove e innovative come il supporto completo per client WMS.

Avviare il servizio demo
--------------------------------------------------------------------------------

MapProxy ha flessibili opzioni di sviluppo e per esempio può essere integrato in Apache. 
Ma è possibile avviare MapProxy come un servizio standalone, che è la migliore opzione per incominciare.

Per avviare MapProxy come servizio standalone cliccate su :menuselection:`Geospatial --> Web Services --> MapProxy --> Start MapProxy`.


Visualizzare la Demo di MapProxy
--------------------------------------------------------------------------------

La pagina demo di MapProxy contiene un client rudimentale per WMS e tile per ogni 
layer configurato. È possibile selezionare la proiezione per i layer WMS per esempio,
ma serve per lo più per verificare velocemente che la vostra installazione funzioni.

Potete aprire la demo in Firefox: `<http://localhost:8011/demo>`_

Visualizzare in un Desktop GIS
--------------------------------------------------------------------------------

Si può aggiungere MapProxy in ogni Desktop GIS che abbia il supporto ai WMS come uDig, QGIS or gvSIG. 
La URL del servizio è: `<http://localhost:8011/service?>`_

L'esempio di configurazione di MapProxy contiene alcuni layer che usano diversi motori di mappe
e diversi dati. Leggete sotto per maggiori dettagli a riguardo di ogni layer. 

.. figure:: /images/screenshots/mapproxy/mapproxy_udig.png
  :alt: MapProxy example in uDig
  :align: center
  
  Un singolo layer WMS con dati da due sorgenti cascaded e `FeatureInformation` da una sorgente.

Layer disponibili
--------------------------------------------------------------------------------

**mapnik**:
  La renderizzazione della popolazione mondiale tramite Mapnik. Non bisogna avviare Mapnik, perchè
  questo layer fa uso di un supporto a Mapnik integrato in MapProxy.

**tilelite**:
  TileLite è un semplice server che distribuisce tile dal servizio popolazione mondiale di Mapnik. 
  Questo layer dimostra la capacità di includere esistenti servizi di tile in MapProxy e li rende 
  disponibili come WMS.
  Bisogna avviare TileLite con *Start Mapnik & TileLite* prima di accedere a questo layer.

**geoserver**:
  La renderizzazione della popolazione US tramite :doc:`GeoServer <../overview/geoserver_overview>` WMS. 
  Questo layer supporta anche la richiesta ``GetFeatureInfo`` che sono cascaded dalla sorgente WMS.
  Bisogna avviare GeoServer con |osgeolive-appmenupath-geoserver| prima di accedere a questo layer.

**mapnik_geoserver**:
  Questo layer dimosta la capacità di combinare diverse sorgenti in un unico layer. Questo combina
  la popolazione mondiale da Mapnik con la popolazione US da GeoServer. Il supporto a ``GetFeatureInfo`` 
  per la popolazione US è ancora disponibile.
  Bisogna avviare GeoServer con |osgeolive-appmenupath-geoserver| prima di accedere a questo layer.

**mapserver**:
  Questo layer usa la demo di Mapserver con i dati Itasca. È un set di dati locali e utilizza la
  caratteristica *coverage* per limitare la BBOX a Itasca, IL.


Creare la propria configurazione
--------------------------------------------------------------------------------

Potete utilizzare ``mapproxy-util`` per creare i template di una nuova configurazione per avviare un server
di test.

Per creare una nuova configurazione:

  mapproxy-util create -t base-config ~/mapproxy

Per avviare il server di test sulla porta 8011 con la configurazione appena creata::

  mapproxy-util serve-develop ~/mapproxy/mapproxy.yaml -b 0.0.0.0:8011

Ore potete visitare la pagina demo all'indirizzo http://127.0.0.1:8011/demo/.
MapProxy ricaricherà automaticamente se si cambia il file di configurazione.


E poi?
--------------------------------------------------------------------------------

* Leggete la `documentazione di MapProxy <../../mapproxy/index.html>`_

* Leggere la configurazione di esempio (``/usr/local/share/mapproxy/mapproxy.yaml``)

