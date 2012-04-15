:Author: Chris Schmidt
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _openlayers-quickstart-es:

********************************************************************************
Guía de inicio rápido de OpenLayers 
********************************************************************************

Creando el Primer Mapa
--------------------------------------------------------------------------------
La API de Openlayers tiene dos conceptos que es importante entender para
poder crear un primer mapa: 'Mapa (*Map*)', y  'Capa (*Layer*)'. Un mapa de OpenLayers
almacena información sobre la proyección por defecto, la extensión, unidades y demás propiedades
del mapa. Dentro del mapa, los datos se muestran a través de las Capas. Una Capa
es una fuente de datos -- información sobre cómo OpenLayers debe pedir los datos
y representarlos.

Elaboración de  HTML
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Construir un visor OpenLayers precisa de la elaboración de un HTML en el cual se
verá el visor. OpenLayers permite poner un mapa dentro de cualquier 
elemento de bloque -- esto quiere decir que se puede poner un mapa en 
casi cualquier elemento HTML de una página.

Además de un elemento de bloque, es necesario también 
incluir una etiqueta de script que referencia a la biblioteca OpenLayers desde la 
página. 

.. code-block:: html
  
  <html>
  <head>
    <title>Ejemplo de OpenLayers</title>
      <script src="http://localhost/OpenLayers-2.9.1/OpenLayers.js"></script>
      </head>
      <body>
        <div style="width:100%; height:100%" id="map"></div>
      </body>
  </html>
    
**Ej. 1**: Creando la primera Página HTML   

Creando el Visor de Mapas
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Para crear el visor, lo primero es crear un mapa. El
constructor OpenLayers.Map necesita un argumento: Este argumento debe
ser un elemento HTML o el ID de un elemento HTML. Este elemento es 
en el que se situará el mapa. 

.. code-block:: javascript

  var map = new OpenLayers.Map('map');
  
**Ej. 2:** Constructor de Mapa

El siguiente paso para crear un visor es añadir una capa al Mapa. 
OpenLayers soporta muchas fuentes de datos diferentes, desde WMS a Yahoo! Maps
o WorldWind. En este ejemplo, se usa una capa WMS. Esta capa WMS es
un ejemplo proporcionado por MetaCarta.

.. code-block:: javascript

  var wms = new OpenLayers.Layer.WMS(
    "WMS",
    "http://localhost/cgi-bin/qgis_mapserv.fcgi", 
    {
    'map': '/usr/local/share/qgis/QGIS-NaturalEarth-Example.qgs',
    'layers':'HYP_50M_SR_W,10m_lakes,10m_rivers_lake_centerline'} );
  map.addLayer(wms);

**Ej. 3:** Constructor de Capa

El primer parámetro que se le pasa a este constructor es el nombre de la capa,
que se usa para algunos fines de visualización. El segundo 
argumento es la URL del servidor WMS.
El tercer argumento es un objeto que contiene los parámetros que se  
adjuntarán a la petición WMS.

Finalmente, para visualizar el mapa, se debe establecer el centro de la imagen y el nivel 
de zoom. Para que el zoom ajuste el mapa en la ventana, se debe usar la
función zoomToMaxExtent, que hará un zoom tan cercano como sea posible manteniendo
la extensión total del mapa dentro de la ventana.

Juntándolo todo
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
El siguiente bloque de código junta todas las piezas anteriores para crear un 
visor OpenLayers.

.. code-block:: html

  <html>
  <head>
    <title>Ejemplo OpenLayers</title>
      <script src="http://localhost/OpenLayers-2.9.1/OpenLayers.js"></script>
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
            'layers':'HYP_50M_SR_W,10m_lakes,10m_rivers_lake_centerline'} );
          map.addLayer(wms);
          map.zoomToMaxExtent();
        </script>
  
  </body>
  </html>

**Ej. 4:** HTML y Javascript completo para un navegador WMS

Superponiendo un WMS
--------------------------------------------------------------------------------

Las capas WMS tienen la capacidad de superponerse encima de otras capas WMS con 
la misma proyección. Hay varias formas de marcar una capa como capa superpuesta,
en lugar de como capa base. Con WMS, la mejor manera de hacerlo es ajustando el
parámetro *transparent* a *'true'*. Este ejemplo usa un WMS de límites administrativos
para mostrar la superposición de un WMS transparente.

.. code-block:: javascript

    var twms = new OpenLayers.Layer.WMS( "World Map", 
        "http://world.freemap.in/cgi-bin/mapserv?", 
        { map: '/www/freemap.in/world/map/factbooktrans.map', 
          transparent: 'true', layers: 'factbook'} 
        );
    map.addLayer(twms);

**Ex. 5:** Cómo añadir un WMS como capa superpuesta transparente al mapa.

El uso del parámetro *transparent: 'true'* provoca el ajuste de otros dos parámetros automáticamente:
 
 * parámetro *format* . La opción *format* de una capa WMS se establece como *image/png* si
   el navegador soporta imágenes PNG transparentes. (En todos los navegadores excepto
   en Internet Explorer 6.) En Internet Explorer 6, se ajustará en su lugar 
   a *image/gif*.
   
 * opción *isBaseLayer*. La opción isBaseLayer controla si la capa 
   se puede visualizar al mismo tiempo que las otras capas. Esta opción está por defecto
   en *false* para la capa WMS, pero si se establece *transparent* a *true* pasa 
   a estar también en *true* por defecto.

Añadiendo una Marca Vectorial al Mapa
--------------------------------------------------------------------------------

Para añadir un único marcador en una latitud y longitud determinada en el mapa, se puede usar
una Capa Vectorial para añadirla como una superposición. 

.. code-block:: html  
   
   var vectorLayer = new OpenLayers.Layer.Vector("Superposicion");
   var feature = new OpenLayers.Feature.Vector(
    new OpenLayers.Geometry.Point(-71, 42),
    {some:'data'},
    {externalGraphic: 'img/marker.png', graphicHeight: 21, graphicWidth: 16});
   vectorLayer.addFeatures(feature);
   map.addLayer(vectorLayer);

Esto es una demostración simple -- hay más información disponible sobre capas superpuestas,
cómo interactuar con ellas y cómo controlarlas y darles estilos en la 
documentación de OpenLayers en openlayers.org.
