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

Gosmore
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Gosmore** è un client in sviluppo che serve come visualizzatore con possibilità 
di fare ricerche basato su OpenStreetMap con il supporto per speech synthesis e 
recuperare la posizione attuale dell'utente tramite GPS usando 
`gpsd <http://savannah.nongnu.org/projects/gpsd>`_.

* Homepage: http://wiki.openstreetmap.org/index.php/Gosmore
* Aiuto online su wiki: http://wiki.openstreetmap.org/wiki/Gosmore#User_Interface
* Prima di eseguire Gosmore avrete il bisogno di convertire i dati di un file `planet-*.osm`. 
  Alcuni dati sono forniti nella directory `/usr/local/share/osm/`.

Quando viene avviato Gosmore dal menu Geospatial o dalla cartella Desktop, vi verrà
data l'opportunità di creare i dati richiesti se necessari. Potete anche importarli
manualmente con:

::

  bzip2 -dc /usr/local/share/data/osm/Nottingham_CBD.osm.bz2 | gosmore rebuild

Questo creerà un gosmore.pak ed è necessario eseguirlo una sola volta. Quindi potete
cercare località con il dataset OSM, per esempio "Beeston Lane".
Usate il bottone centrale e destro per impostare l'origine e la destinazione
per il percorso più breve. Usare il bottone "O" per accedere alle opzione del
programma, e il pulsante "3D" per ottenere una vista prospettiva utile per la
navigazione automobilistica.


Osmarender
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Osmarender** è un strumento per rendering basato su regole per generare immagini 
SVG di dati OSM. Prende come input un set di dati OpenStreetMap e un file di regole.
Restituisce un'immagine SVG che è rappresentate secondo gli stili definiti nel 
file delle regole. In futuro potrebbe essere rimpiazzato da software tipo
`TileMill <http://wiki.openstreetmap.org/wiki/Tilemill>`_.

* Homepage: http://wiki.openstreetmap.org/wiki/Osmarender

Esempio:

.. note:: Richiede circa 1 GB di RAM libera e impieghera un paio di giorni per
   creare la città completa. L'estratto di un singolo villaggio o quartiere 
   dovrebbe essere molto più gestibile.
   Vedere `Xapi <http://wiki.openstreetmap.org/wiki/Xapi>`_ nel wiki di OSM 
   per dettagli su come scaricare una parte più piccola salvandola in un file ``.osm``,
   o usare *JOSM* o *Merkaartor* per scaricare un pezzo più piccolo.
   Un insieme più piccolo chiamato `Nottingham_CBD.osm` è stato incluso per 
   vostra convenienza, ma comunque può richiedere un lungo tempo per essere 
   processato.

::

  cp /usr/local/share/data/osm/feature_city_CBD.osm.bz2 .
  bzip2 -d feature_city_CBD.osm.bz2
  osmarender feature_city_CBD.osm

È possibile vedere i risultati in un visualizzatore SVG come `Inkscape` o `Firefox`:

::

  firefox feature_city.svg


osm2pgsql
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**osm2pgsql** è uno strumento che converte i dati OpenStreetMap (.osm)
in un formato che può essere caricato su PostgreSQL (PostGIS). È spesso usato
per renderizzare i dati di OSM usando Mapnik, poichè Mapnik può interrogare
PostgreSQL per ottenere dati geografici.

* Homepage: http://wiki.openstreetmap.org/wiki/Osm2pgsql


osm2poidb
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**osm2poidb** è un programma che estrae i dati dei Point of Interest (POI) da
un estratto dei dati OpenStreetMap (.osm). I risultati sono salvati in un database
SQLite. Una versione preprocessata delle caratteristiche estratte da OSM della città 
sono fornite con il disco e possono essere trovate nella directory `/usr/local/share/data/osm`
e visualizzate con il programma `SQLite database browser` nel menu Databases. Sul disco è
usato dal software :doc:`GpsDrive <../overview/gpsdrive_overview>` per fornire una lista
interrogabile di servizi locali. Per eseguirlo manualmente, fate:

::

  bzcat /usr/local/share/data/osm/feature_city.osm.bz2 | osm2poidb -o feature_city_poi.db STDIN
