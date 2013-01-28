:Author: Chris Schmidt
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:translator: Roberta Fagandini, Luca Delucchi

********************************************************************************
Guida rapida suOpenLayers 
********************************************************************************

Esempi OpenLayers
--------------------------------------------------------------------------------
A volte il modo più veloce per capire come OpenLayers lavora è dare un'occhiata 
agli esempi, che sono installati in: `http://localhost/openlayers/examples <../../openlayers/examples>`_.
	

Creare la tua prima mappa
--------------------------------------------------------------------------------
L'OpenLayers API ha due concetti fondamentali da capire per realizzare la tua prima
mappa: 'Map' e 'Layer'. Una Mappa OpenLayers contiene informazioni circa la proiezione,
le estensioni, le unità e altre info sulla mappa. Dentro la mappa i dati sono visualizzati
tramite 'Layers'. Un Layer è una sorgente di dati -- informazioni su come OpenLayers
dovrebbe richiedere e visualizzare i dati.
	
Crafting HTML
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Costruire un visualizzatore con OpenLayers richiede una certa abilità con i codici HTML
in cui il vostro visualizzatore sarà inserito. OpenLayers permette di inserire una mappa dentro 
a ogni elemento di blocco, ciò significa che può essere usato per inserire una mappa in quasi 
tutti gli elementi HTML della tua pagina.

In aggiunta al singolo elemento di blocco, è necessariop anche includere un tag <script>
che includa la libreria di Openlayers nella pagina.

.. code-block:: html
  
  <html>
  <head>
    <title>OpenLayers Example</title>
      <script src="http://localhost/openlayers/OpenLayers.js"></script>
      </head>
      <body>
        <div style="width:100%; height:100%" id="map"></div>
      </body>
  </html>
    
**Ex. 1**: Creare la vostra prima pagina HTML   

Creare il visualizzatore di mappe
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Per creare il visualizzatore di mappe si deve prima creare una mapppa.
Il costrutto OpenLayers.Map richiede un argomento che può essere un elemento HTML
o l'ID di un elemento HTML. E consiste nell'elemento in cui la mappa sarà posizionata.

.. code-block:: javascript

  var map = new OpenLayers.Map('map');
  
**Ex. 2:** Costruttore mappa

Il prossimo passo per creare un visualizzatore è aggiungere un layer alla mappa.
OpenLayers supporta diverse sorgenti di dati, dal WMS alle mappe Yahoo! al WorldWind. 
In questo esempio viene usato un layer WMS fornito da QGIS Mapserver.

.. code-block:: javascript

  var wms = new OpenLayers.Layer.WMS(
    "WMS",
    "http://localhost/cgi-bin/qgis_mapserv.fcgi", 
    {
    'map': '/usr/local/share/qgis/QGIS-NaturalEarth-Example.qgs',
    'layers':'HYP_50M_SR_W,10m_lakes,10m_rivers_lake_centerline'} );
  map.addLayer(wms);

**Ex. 3:** Costruttore layer

Il primo parametro in questo costrutto è il nome del layer, che è usato in alcuni 
casi di visualizzazione. Il secondo parametro è la URL al server WMS. Il terzo è un 
oggetto che contiene i parametri da attribuire al layer WMS richiesto.

Alla fine, per visualizzare la mappa, bisogna settare un centro e un livello di zoom.
Per adattare la mappa alla finestra, si può usare la funzione zoomToMaxExtent che 
zoomma il più vicino possibile quando la mappa è adattata alla massima estensione dentro la finestra.

Unire tutto assieme
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


Il blocco di codice seguente mette insieme tutti i pezzi per creare un visualizzatore di OpenLayers.

.. code-block:: html

  <html>
  <head>
    <title>OpenLayers Example</title>
      <script src="http://localhost/openlayers/OpenLayers.js"></script>
      </head>
      <body>
        <div style="width:100%; height:100%" id="map"></div>
        <script defer="defer" type="text/javascript">
          var map = new OpenLayers.Map('map');
          var wms = new OpenLayers.Layer.WMS(
            "WMS",
            "http://localhost/cgi-bin/qgis_mapserv.fcgi", 
            {
            'map': '/usr/local/share/qgis/QGIS-NaturalEarth-Example.qgs',
            'layers':'HYP_50M_SR_W,ne_10m_lakes,ne_10m_rivers_lake_centerline'} );
          map.addLayer(wms);
          map.zoomToMaxExtent();
        </script>
  
  </body>
  </html>

**Ex. 4:** HTML e Javascript per un semplice visualizzatore WMS

Sovrapporre un WMS
--------------------------------------------------------------------------------

I layer WMS possono essere sovrapposti sopra altri layer WMS se hanno la stessa proiezione.
Ci sono diversi modi per definire un layer di overlay piuttosto che un layer di base.
Con il WMS il modo migliore per farlo è impostando il parametro 'trasparent' su 'true'.
L'esempio usa un WMS dei confini politici per mostrare la sovrapposizione di un WMS trasparente.
	
.. code-block:: javascript

    var twms = new OpenLayers.Layer.WMS( "World Map", 
        "http://world.freemap.in/cgi-bin/mapserv?", 
        { map: '/www/freemap.in/world/map/factbooktrans.map', 
          transparent: 'true', layers: 'factbook'} 
        );
    map.addLayer(twms);

**Ex. 5:** Come aggiungere un WMS trasparente alla vostra mappa.

Usando trasparent: 'true' si definiscono contemporaneamente due flags:
	
    * il parametro formato. Il formato dei layer wms è impostato su image/png se il browser 
      supporta immagini png trasparenti. (è supportato da tutti i browser tranne
      Internet Explorer 6.) Con Internet Explorer 6 sara invece impostato su image/gif.
	
    * opzione isBaseLayer. E' un'opzione che controlla se i layer possono essere visualizzati 
      contemporaneamente ad altri layer. Questa opzione di default è impostata su 'false' per i 
      layer WMS, ma impostando trasparent: 'true' l'opzione cambia automaticamente in 'true'


Aggiungere un  marker vettoriale alla mappa
--------------------------------------------------------------------------------

Per aggiungere un singolo marker a una certa latitudine e longitudine nella mappa
puoi usare un layer vettoriale per sovrapporlo.

.. code-block:: html  
   
   var vectorLayer = new OpenLayers.Layer.Vector("Overlay");
   var feature = new OpenLayers.Feature.Vector(
    new OpenLayers.Geometry.Point(-71, 42),
    {some:'data'},
    {externalGraphic: 'img/marker.png', graphicHeight: 21, graphicWidth: 16});
   vectorLayer.addFeatures(feature);
   map.addLayer(vectorLayer);

Questa è una semplice dimostrazione, sono disponibili maggiori informazioni sugli overlay,
su come interagire con loro e su come controllarli e impostarne lo stile  nella documentazione di 
OpenLayers sul sito openlayers.org.