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
* Oprire i dati di esempio con :menuselection:`File --> Open... --> /usr/local/share/data/osm/feature_city.osm.bz2`
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

Upon launching Gosmore from the Geospatial menu or Desktop folders, you will
be given the chance to create the required data file if needed. You can also
manually import it with:

::

  bzip2 -dc /usr/local/share/data/osm/Nottingham_CBD.osm.bz2 | gosmore rebuild

Questo creerà un gosmore.pak ed è necessario eseguirlo una sola volta. You can then
search for locations within the OSM dataset, for example "Jubilee Campus".
Use the middle and right mouse buttons to set the origin and
destination for shortest path routing. Use the "O" button to access the
program options, and the "3D" button to get a perspective view useful
for in-car GPS navigation.


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
   vostra convenienza, but even that still make take a rather long time to process.

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

**osm2poidb** is a utility program that extracts Point of Interest (POI) data
from a OpenStreetMap (.osm) data extract. The results are saved into a SQLite
database file. A processed version of the OSM feature city extract provided with
this disc can be found in the `/usr/local/share/data/osm` directory, and explored
with the `SQLite database browser` program in the Databases menu. On this disc
it is used by the :doc:`GpsDrive <../overview/gpsdrive_overview>` software to
provide a searchable list of local amenities. To run it manually, do:

::

  bzcat /usr/local/share/data/osm/feature_city.osm.bz2 | osm2poidb -o feature_city_poi.db STDIN


