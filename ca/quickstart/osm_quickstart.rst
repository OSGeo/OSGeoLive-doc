:Author: Hamish Bowman
:Translator: Anna Muñoz Bollas
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.osm.org


********************************************************************************
Guia d'inici ràpid per OpenStreetMap
********************************************************************************

Programes
================================================================================

JOSM
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**JOSM** (Java OpenStreetMap Editor) és un editor per OpenStreetMap (OSM) 
escrit en Java. La versió actual suporta traces GPX úniques, dades de traces 
GPX emmagatzemades a la base de dades OSM i nodes existents, segments de línies 
i etiquetes de metadades de la base de dades OSM.

* Lloc web: http://josm.openstreetmap.de

La col·lecció d'extensions per JOSM conté els següents complements:

* agpifoj	     - Crea una nova capa amb imatges georeferenciades.
* colorscheme	     - Permet crear diferents esquemes de color.
* livegps	     - Suporta entrada de GPS juntament amb gpsd.
* measurement	     - Afegeix un diàleg i una capa per mesurar la longitud i l'angle dels segments i crear rutes de mesura.
* openvisible	     - Permet obrir arxius gpx i osm que es solapen amb l'àrea visible que es mostra a la pantalla.
* slippymap	     - Mostra una quadrícula mòbil en JOSM.
* surveyor	     - Permet afegir marcadors / nodes en les posicions gps actuals.
* utilsplugin	     - Diverses utilitats d'ajuda.
* validator	     - Validació de dades.
* wmsplugin	     - Mostra imatges de fons provinents de qualsevol font WMS.


Lectures addicionals
--------------------------------------------------------------------------------

* Tutorial en línia: http://www.use-it.be/europe/docs/OSMmanual/
* Guia de l'usuari: http://wiki.openstreetmap.org/wiki/JOSM/Guide
* `Vídeo tutorial <http://showmedo.com/videotutorials/video?name=1800050&amp;fromSeriesID=180>`_
* Obrir les dades d'exemple amb :menuselection:`File --> Open... --> /usr/local/share/data/osm/feature_city.osm.bz2`
* Quan s'inicia l'aplicació es mostren instruccions addicionals.


Merkaartor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Merkaartor** és un editor de mapes per OpenStreetMap que utilitza la biblioteca Qt.
 És una mica més fàcil d'utilitzar que JOSM, però disposa de menys funcionalitats.

* Lloc web: http://merkaartor.be
* Ajuda en línia: http://merkaartor.be/wiki/merkaartor/Documentation

Gosmore
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Gosmore** és un visor d'OpenStreetMap, Wayfinder i client de cerca amb
suport per a la síntesi de veu i per obtenir la ubicació actual de l'usuari
actual mitjançant GPS 'gpsd <http://gpsd.berlios.de> _'.

* Lloc web: http://wiki.openstreetmap.org/index.php/Gosmore
* Wiki d'ajuda en línia: http://wiki.openstreetmap.org/wiki/Gosmore#User_Interface
* Abans d'executar Gosmore necessitaràs convertir un fitxer de dades `planet-*.osm`. Es poden trobar algunes dades en el directori `/usr/local/share/osm/`.

Importar amb:

::

  bzip2 -dc /usr/local/share/data/osm/Denver_CBD.osm.bz2 | gosmore rebuild

Això crearà un arxiu gosmore.pak i només és necessari executar-lo un cop.
A continuació, pots buscar ubicacions dins del conjunt de dades de OSM, per exemple "Zoo".
Utilitzeu els botons del ratolí central i dret per establir l'origen i destinació per l'enrutament de la ruta més curta. 
Utilitzeu el botó "O" per accedir a les opcions del programa, i el "3D" per obtenir una vista en perspectiva útil 
per al GPS de navegació per a automòbils.

Osmarender
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Osmarender** és una eina de renderitzat basat en regles per a generar imatges SVG provinents de dades OSM. 
Pren com a entrada un conjunt de dades d'OpenStreetMap i un arxiu de regles.
Genera una imatge SVG que es representa d'acord amb els estils definits a l'arxiu de regles.
 
* Lloc web: http://wiki.openstreetmap.org/wiki/Osmarender

Exemple:

.. Note :: Això requereix aprox. 1 GB de memòria RAM lliure i triga uns dies en processar
   la totalitat de la ciutat. Un sol poble o barri hauria de ser bastant més manejable.
   Consulteu `xapi <http://wiki.openstreetmap.org/wiki/Xapi>`_ al Wiki de OSM per
   detalls sobre com descarregar trossos més petits en un arxiu :file:`.osm`, o fer servir
   *JOSM* o *Merkaartor* per descarregar un tros més petit.
   
::

  cp /usr/local/share/data/osm/feature_city.osm.bz2 .
  bzip2 -d feature_city.osm.bz2
  osmarender feature_city.osm

Es poden veure els resultats en un visor d'imatges SVG com `Inkscape` o `Firefox`:

::

  firefox feature_city.svg


osm2pgsql
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**osm2pgsql** és un programa que converteix dades OpenStreetMap (. OSM) en un
format que es pot carregar a PostgreSQL (PostGIS). Sovint s'utilitza per representar 
visualment dades OSM mitjançant Mapnik, atès que Mapnik pot realitzar consultes 
PostgreSQL sobre dades del mapa, però no treballa directament amb els arxius d'OSM.
 
* Lloc web: http://wiki.openstreetmap.org/wiki/Osm2pgsql


osm2poidb
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**osm2poidb** és un programa que extreu dades dels Punts d'Interés (POI, Point of Interest)
continguts en una extracció de la base d'OpenStreetMap (.osm). El resultat s'emmagatzema 
en un arxiu de la base de dades SQLite. El directory `/usr/local/share/data/osm` conté un
conjunt de dades d'exemple que es poden explorar amb el programa `SQLite database browser` que 
podeu trobar en el menu de bases de dades.
Dintre de les utilitat contingudes al DVD, el programa :doc:`GpsDrive <../overview/gpsdrive_overview>`
usa aquesta utilitat per a buscar dintre d'una llista d'equipaments locals.
Per executar el programa manualment, feu:

::

  bzcat /usr/local/share/data/osm/feature_city.osm.bz2 | osm2poidb -o feature_city_poi.db STDIN

