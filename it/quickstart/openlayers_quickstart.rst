:Author: Antonio Santiago
:Author: Chris Schmidt
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Roberta Fagandini
:Translator: Luca Delucchi

********************************************************************************
Guida rapida OpenLayers
********************************************************************************

.. image:: /images/project_logos/logo-OpenLayers.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://openlayers.org/

Questo tutorial descrive alcune passaggi base richiesti per iniziare a lavorare
con OpenLayers3: creare una mappa base, aggiungere layer raster e vettoriali
e stilizzare gli elementi.

OpenLayers3 è una libreria per mappe molto leggere per client web e mobile
che usa le tecnologie dei browser moderni, tipo HTML5, WebGL e CSS3.

.. contents:: Contents

Concetti chiave
--------------------------------------------------------------------------------

Prima di iniziare a lavorare con OpenLayers è bene capire i concetti chiave
di OpenLayers:

**Map**
  La *map* è un componente chiave di OpenLayers. Per un *map* da visualizzare,
  sono necessari una *view*, uno o più *layers* e un contenitore di destinazione.

**View**
  La *view* determina come la mappa è renderizzata. È usata per impostare la
  risoluzione, le coordinate del centro, ecc. È come una camera attraverso
  il quale si accede al contenuto della mappa.

**Layers**
 *Layers* possono essere alla mappa in ordine impilato, questo fa si che,
 i layers più in basso sono renderizzati prima dei layers più in alto.
 Layers possono essere sia *layers raster* (images), che *layers vettoriali*
 (punti/linee/poligoni).

**Source**
  Ogni layer ha una *source*, che conosce come caricare il contenuto del layer.
  Nel caso di *layers vettoriali*, la sorgente è letta da dati vettoriali
  usando una classe *format* (per esempio GeoJSON o KML) e riempe il layer
  con un numero di *features*.

**Features**
  *Features* rappresentano cose del mondo reale e possono essere renderizzate
  con differenti *geometries* (come punti, linee o poligoni) usando un dato
  *style*, che determina il suo aspetto (spessore delle linee, colore di
  riempiemento, etc).

Una mappa elementare
--------------------------------------------------------------------------------

In questo passaggio si creerà una mappa base.

Creare un file nella cartella /home/user/ denominato basic-map.html , e
copia il testo seguente nel file.

.. code-block:: html

  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Basic map</title>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width">

          <!-- OpenLayers CSS -->
          <link rel="stylesheet" href="http://ol3js.org/en/master/build/ol.css" type="text/css">

          <!-- Custom styles -->
          <style>
            #map {
              width: 100%;
              height: 500px;
            }
          </style>
      </head>
      <body>
          <h1>Basic map</h1>

          <div id="map"></div>

          <!-- OpenLayers JS-->
          <script src="http://ol3js.org/en/master/build/ol.js" type="text/javascript"></script>

          <!-- App code -->
          <script>
            var map = new ol.Map({
              target: 'map',
              renderer: 'canvas',
              layers: [
                new ol.layer.Tile({
                  source: new ol.source.OSM()
                })
              ],
              view: new ol.View({
                center: ol.proj.transform([2.1833, 41.3833], 'EPSG:4326', 'EPSG:3857'),
                zoom: 6
              })
            });
          </script>

      </body>
  </html>

**Es. 1**: Struttura codice basilare

Ora provate ad aprire basic-map.html da un browser web. Dovreste vedere questo:

.. image:: /images/screenshots/800x600/openlayers-basic-map.png
  :scale: 100 %

Nota:

* Il codice segue le best practice di caricare codice JavaScipt alla fine
  del file html.

* Una mappa OpenLayers ha bisogno di essere attaccata ad un elemento HTML DOM,
  perciò è stato creato un elemento ``<div>`` identificato dal tag *map*.

* Mappe sono rappresentate dalla classe ``ol.Map``. Si specifica l'elemento
  DOM nel quale renderizzare la mappa usando la proprietà **target**.

* OpenLayers permette la visualizzazione delle mappe usando tre meccanismi
  differenti: Canvas, WebGL e DOM. Qui si seleziona *canvas* usando la
  proprietà **renderer**.

* Una mappa mostra i dati contenuti in un layer, per questo è stata creato
  un layer di tile, reppresentato dalla classe ``ol.layer.Tile``, che carica
  contenuto dal progetto OpenStreetMap, usando la classe sorgente ``ol.source.OSM``.

* Alla fine, si imposta la posizione iniziale della *camera* usando la classe
  ``ol.View``, il livello di zoom iniziale e la posizione centrale.

Aggiungere layers raster
--------------------------------------------------------------------------------

I layer raster più usati sono i layer di tiles, forniti per esempio da
OpenStreetMap, MapQuest, Bing, ecc. Layers di tile sono rappresentati dalla
classe ``ol.layer.Tile`` e devono usare una sorgente che conosce come caricare
tile da un provider, tipo ``ol.source.OSM`` o ``ol.source.MapQuest``:

.. code-block:: javascript

  var osm = new ol.layer.Tile({
    source: new ol.source.OSM()
  });

  var mq = new ol.layer.Tile({
    source: new ol.source.MapQuest({
      layer: 'osm'
    })
  });

**Es. 2:** Creare layer raster

I layers possono essere aggiunti alla mappa in due modi:

1. Quando si inizializza ``ol.Map``, usando la proprietà ``layers``:

.. code-block:: javascript

  var map = new ol.Map({
    ...
    layers: [osm, mq]
    ...
  });

**Ex. 3:** Aggiungere i layer all'inizializzazione della mappa

2. Aggiungendo manualmente con il metodo ``map.addLayer()``:

.. code-block:: javascript

  map.addLayer(osm);
  map.addLayer(mq);

**Ex. 4:** Aggiungere i layer manualmente

Aggiungere layers vettoriali
--------------------------------------------------------------------------------

I layers vettoriali sono rappresentati da ``ol.layer.Vector`` deve usare
una sorgente adatta per leggere il formato vettoriale, come ``ol.source.GeoJSON``,
``ol.source.KML`` o ``ol.source.TopoJSON``.

.. code-block:: javascript

  var vectorLayer = new ol.layer.Vector({
    source: new ol.source.GeoJSON({
      url: 'url_to_geojson_file'
    })
  });

**Ex. 5:** Leggere un layer vettoriale GeoJSON

.. image:: /images/screenshots/800x600/openlayers-vector.png
  :scale: 100 %

Notare che nel precedente codice bisogna cambiare ``url_to_file`` in modo che
punti ad un valido file GeoJSON situato nel vostro server.
È da sapere che la sicurezza di Javascript non permetterà di caricare sorgenti
di dataset da un URL esterno in un dominio differente.

Le features possono anche essere create manualmente. In questo caso bisogna
creare una geometria che rappresenti la feature:

.. code-block:: javascript

  // Geometries
  var point = new ol.geom.Point(
      ol.proj.transform([3,50], 'EPSG:4326', 'EPSG:3857')
  );
  var circle = new ol.geom.Circle(
      ol.proj.transform([2.1833, 41.3833], 'EPSG:4326', 'EPSG:3857'),
      1000000
  );

  // Features
  var pointFeature = new ol.Feature(point);
  var circleFeature = new ol.Feature(circle);

  // Source
  var vectorSource = new ol.source.Vector({
      projection: 'EPSG:4326'
  });
  vectorSource.addFeatures([pointFeature, circleFeature]);

  // Vector layer
  var vectorLayer = new ol.layer.Vector({
    source: vectorSource
  });

**Ex. 6:** Aggiungere features manualmente

Stile degli elementi
--------------------------------------------------------------------------------

Gle elementi con layer vettoriali possono essere vestiti.
Lo stile è determinato da una combinazione di riempiemento, tratto, testo
e immagine, che sono tutti opzionali. Inoltre, uno stile può essere applicato
a un layer, che determina lo stile di tutte le features contenute, o ad un
elemento individuale.

Uno stile è rappresentato dalla classe ``ol.style.Style`` che ha proprietà
per impostare il ``fill``, ``stroke``, ``text`` e ``image`` da applicare.
Il prossimo esempio mostra i limiti amministrativi del Mondo raffigurati
utilizzando un verde per il riempiemento e il bordo:

.. image:: /images/screenshots/800x600/openlayers-styling.png
  :scale: 100 %

.. code-block:: javascript

  var limitsLayer = new ol.layer.Vector({
    source: new ol.source.StaticVector({
      url: 'data/world_limits.json',
      format: new ol.format.TopoJSON(),
      projection: 'EPSG:3857'
    }),
    style: new ol.style.Style({
      fill: new ol.style.Fill({
        color: 'rgba(55, 155, 55, 0.3)'
      }),
      stroke: new ol.style.Stroke({
        color: 'rgba(55, 155, 55, 0.8)',
        width: 1
      }),
      image: new ol.style.Circle({
        radius: 7,
        fill: new ol.style.Fill({
          color: 'rgba(55, 155, 55, 0.5)',
        })
      })
    })
  });

**Ex. 7:** Dare uno stile agli elementi

Nel codice, si carica un file TopoJSON e stilizzato attraverso la proprietà ``style``.
Si imposta ``fill`` e ``stroke``, richiesto per linee e poligoni, e un
``image`` (in questo caso un cerchio) usato per le features puntuali.

Lavorare con gli eventi
--------------------------------------------------------------------------------

La maggior parte dei componenti, tipo mappa, layers o controlli, innescano
eventi per notificare cambiamenti. Per esempio si può ricevere notifiche ogni
volta che il mouse è stato mosso sulla mappa, quando una feature è aggiunta ad
un layer vettoriale, ecc.

Gli eventi possone essre registrati facilmente su un oggetto con il metodo ``on()``
e rimossi con ``un()``.

Il codice che segue registra un evento sulla mappa, ed è notificato ogni
volta che il puntatore è mosso. Con la funzione callback si ottengono le
coordinate del puntatore e stampate nella console del browser con due sistemi
di proiezioni diversi.

.. code-block:: javascript

  map.on('pointermove', function(event) {
    var coord3857 = event.coordinate;
    var coord4326 = ol.proj.transform(coord3857, 'EPSG:3857', 'EPSG:4326');

    console.log(coord3857, coord4326);
  });

**Ex. 8:** Stampare la posizione del puntatore.

Ed ora?
--------------------------------------------------------------------------------
Alcune volte la via più semplice per imparare come funziona OpenLayers
è vedere gli esempi e il loro codice sorgente. È possibile trovare esempi su
OpenLayers3 installati su: `http://localhost/openlayers/examples <../../openlayers/examples>`_.
