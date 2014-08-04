:Author: Hamish Bowman
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.osm.org


********************************************************************************
Guida rapida su OpenStreetMap 
********************************************************************************

About
===============================

.. HB comment: Il seguente paragrafo è in CC0 da learnosm.org 

OpenStreetMap è una mappa gratuita a livello stradale del mondo, creata da una
comunità sempre crescente di mappatori.

Chiunque può modificare OpenStreetMap. Qui si può imparare con `LearnOSM <http://learnosm.org>`_
vi fornisce guide passo-dopo-passo facili da capire per iniziare a contribuire ad OpenStreetMap
e per utilizzare OpenStreetMap ed i suoi dati.
La guida Learn OSM al link sopra mostra come navigare il sito web di OpenStreetMap
vedere e stampare mappe, e registrarsi per un nuovo account utente. Dopo che avrete
il vostro utente e password, potrete aggiungere il primo punto alla mappa.
Imparate a fare campionamenti in strada e lavorare con immagini aeree.

Il rimanente di questa guida rapida introduce alcuni dei software usati per modificare
e renderizzare i dati di OSM.

Programmi
================================================================================

JOSM
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**JOSM** (Java OpenStreetMap Editor) è un editor per OpenStreetMap (OSM)
scritto in Java. L'attuale versione supporta tracce GPX singole,
tracce GPX dal database OSM e i nodi, linee e metadati tags presenti sul 
database di OSM.

* Homepage: http://josm.openstreetmap.de

La collezione dei plugin di JOSM contiene i seguenti plugins:

* colorscheme	     - Permette di creare schemi di colori differenti.
* livegps	     - Supporta l'inserimenti in tempo reale da GPS utilizzando gpsd.
* measurement	     - Aggiunge una finestra e un layer per misurare lunghezze e angoli di segmenti e creare misure di percorsi.
* openvisible	     - Permette di aprire file gpx e osm che intersecano l'area attualmente visibile.
* surveyor	     - Permette di aggiungere markers/nodi sulla posizione gps attuale
* cadastre-fr        - Un gestore speciale per il French land registry WMS server.
* DirectUpload       - Carica direttamente le tracce GPS dall'attuale layer attivo su JOSM su openstreetmap.org.
* editgpx            - Anonymizes timestamps and deletes parts of huge GPX tracks very fast.
* lakewalker         - Aiuta a vettorializzare immagini WMS.
* routing            - Fornisce routing.


Further reading
--------------------------------------------------------------------------------

* Guida utente: http://wiki.openstreetmap.org/wiki/JOSM/Guide
* `Video tutorial <http://showmedo.com/videotutorials/video?name=1800050&amp;fromSeriesID=180>`_
* Online tutorial: http://www.use-it.be/europe/docs/OSMmanual/
* Aprire i dati di esempio con :menuselection:`File --> Open... --> /usr/local/share/data/osm/feature_city.osm.bz2`
* Maggiori istruzioni sono date quando lancerete l'applicazione.


Merkaartor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Merkaartor** è un editor per OpenStreetMap che usa Qt toolkit.
È leggermente più user friendly che JOSM, ma ha anche meno features.

* Homepage: http://merkaartor.be
* Aiuto online: http://merkaartor.be/wiki/merkaartor/Documentation

Osmosis
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Osmosis** è un programma molto potente per eseguire molte operazioni sui dati grezzi
di OSM. QUesto include l'importazione ed esportazione dei dati in database, ordinamento,
pulizia e creazione di copie dei dati. Per maggiori informazioni vedere la 
`pagina dettaglia sull'utilizzo <http://wiki.openstreetmap.org/wiki/Osmosis#Usage>`_.
Un semplice report sulla contribuzione degli autori può essere calcolato come segue.
Aprire un terminale, e sulla linea di comando digitare:

::

  osmosis --read-xml ~/data/osm/feature_city.osm.bz2 --report-entity

Quindi guardate il nuovo file `entity-report.txt` nella directory principale dell'utente
per i dettagli del report.


osm2pgsql
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**osm2pgsql** è uno strumento che converte i dati OpenStreetMap (.osm)
in un formato che può essere caricato su PostgreSQL (PostGIS). È spesso usato
per renderizzare i dati di OSM usando Mapnik, poichè Mapnik può interrogare
PostgreSQL per ottenere dati geografici.

* Homepage: http://wiki.openstreetmap.org/wiki/Osm2pgsql
