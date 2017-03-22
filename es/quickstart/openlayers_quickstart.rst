:Author: Antonio Santiago
:Author: Chris Schmidt
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.5
:Translator: David Mateos
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Guía de inicio rápido de OpenLayers 
********************************************************************************

.. image:: ../../images/project_logos/logo-OpenLayers.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://openlayers.org/

Esta Guía de Inicio Rápido describe algunos pasos básicos necesarios para empezar a trabajar con penLayers3: crear un mapa básico, añadir capas raster y vectorial y dar estilos a los elementos. 

OpenLayers3 es una biblioteca de mapeo ligera para clientes web y móviles que usa tecnologías de navegadores modernos como HTML5, WebGL y CSS3.

.. contents:: Contents

Conceptos básicos
--------------------------------------------------------------------------------

Antes de empezar a trabajar con Openlayers es útil entender algunos conceptos:

**Map**
Un mapa (*map*) es el componente central de OpenLayers. Para crear un mapa se necesitan una vista, una o más capas y un contenedor de destino.

**Vista**
La vista (*view*) determina como se dibujará el mapa. Se usa para definir la resolución, el encuadre, etc. Es como una cámara a través de la cual se mira el contenido del mapa.

**Capas**
 Las capas (*layers*)  se pueden añadir al mapa de forma superpuesta, es decir, las capas más bajas se dibujan antes que las capas superiores. Las capas pueden ser *capas raster* (imágenes) o *capas vectoriales* (puntos/líneas/polígonos) .

**Source**
  Cada capa tiene una fuente (*source*) adjuntada, la cual sabe como cargar el contenido de la capa.
  En el caso de las *capas vectoriales*, esta fuente lee lso datos vectoriales usando una clase de *formato* (por ejemplo GeoJSON o KML) y rellena la capa con un conjunto de entidades.

**Entidades**
  Las entidades (*Features*) representan cosas del mundo real y pueden representarse usando diferentes *geometrias* (*geometries*) como punto, línea o polígono, usando un estilo (*style*) dado, el cual determina su apariencia (grosor de línea, color de relleno, etc).

Un mapa básico
--------------------------------------------------------------------------------

En este paso se creará un mapa básico.

Crear un archivo, por ejemplo en /home/user/ llamado basic-map.html, y copiar lo siguiente dentro del mismo.

.. code-block:: html

  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Basic map</title>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width">

          <!-- OpenLayers CSS -->
          <link rel="stylesheet" href="http://localhost/ol3/dist/ol.css" type="text/css">

          <!-- Estilos personalizados -->
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
          <script src="http://localhost/ol3/dist/ol-debug.js" type="text/javascript"></script>

          <!-- código de la app -->
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

**Ej. 1**: Estructura del código básico

Ahora, intentar abri el archivo basic-map.html desde un navegador web. Se debería ver lo siguiente:

.. image:: ../../images/screenshots/800x600/openlayers-basic-map.png
  :scale: 100 %

Notas:

* El código sigue la buena práctica de cargar el código Javascript al final del fichero html.

* Un mapa OpenLayers map tiene que ser adjuntado a un elemento del DOM HTML, asi que se a creado un elemento ``<div>`` identificado con la etiqueta *map*.

* Los mapas se preresentan con la clase ``ol.Map``. Se especifica el elemento del DOM para dibujar el mapa dentro usando la propiedad **target**.

* OpenLayers permite representar mapas usando tres mecanismos diferentes: Canvas, WebGL y DOM. Aquí se ha seleccionado *canvas* usando la propiedad **renderer**.

* Un mapa muestra los datos contenidos en las capas, así que se ha creado una capa de tiles, representada por la clase ``ol.layer.Tile``, que carga su contenido del proyecto OpenStreetMap, usando la clase de fuente ``ol.source.OSM``.

* Finalmente, se ha seleccionado la posición inicial de la *cámara* usando la clase ``ol.View``, definiendo el zoom inicial y la localización del centro. 

Añadir capas raster
--------------------------------------------------------------------------------

Las capas raster más usadas son las capas de tiles, proporcionadas por los simpáticos de OpenStreetMap, MapQuest, Bing, etc. Las capas de tiles se representan por la clase ``ol.layer.Tile``y deben usar una fuente que sepa cómo cargar tiles de un proveedor concreto, como ``ol.source.OSM`` o ``ol.source.MapQuest``:

.. code-block:: javascript

  var osm = new ol.layer.Tile({
    source: new ol.source.OSM()
  });

  var mq = new ol.layer.Tile({
    source: new ol.source.MapQuest({
      layer: 'osm'
    })
  });

**Ej. 2:** Creación de capa ráster

Las capas se pueden añadir al mapa de dos formas: 

1. Cuando se construye el ``ol.Map``, usando la propiedad ``layers``:

.. code-block:: javascript

  var map = new ol.Map({
    ...
    layers: [osm, mq]
    ...
  });

**Ej. 3:** Adición de capas al inicializar el mapa

2. Añadirlas manualmente con el método ``map.addLayer()``:

.. code-block:: javascript

  map.addLayer(osm);
  map.addLayer(mq);

**Ej. 4:** Añadir capas manualmente

Añadir capas vectoriales
--------------------------------------------------------------------------------

Las capas vectoriales están representadas por la clase ``ol.layer.Vector`` y deben usar una fuente capaz de leer el formato vectorial, como ``ol.source.GeoJSON``, ``ol.source.KML`` o ``ol.source.TopoJSON``.

.. code-block:: javascript

  var vectorLayer = new ol.layer.Vector({
    source: new ol.source.GeoJSON({
      url: 'url_to_geojson_file'
    })
  });

  // Añadir capa vectorial al mapa
  map.addLayer(vectorLayer);

**Ej. 5:** Construcción de una capa vectorial GeoJSON

.. image:: ../../images/screenshots/800x600/openlayers-vector.png
  :scale: 100 %

Nota: en el código anterior se debe cambiar ``url_to_file`` para apuntar a un fichero GeoJSON válido localizado en el servidor. 
Hay que tener en cuenta que la seguridad Javascript evitará usar como fuente juegos de datos de una URL externa o de un dominio diferente. 

Las entidades se pueden crear también de forma manual. En este caso es necesario crear una geometría que represente a la entidad: 

.. code-block:: javascript

  // Geometrias 
  var point = new ol.geom.Point(
      ol.proj.transform([3,50], 'EPSG:4326', 'EPSG:3857')
  );
  var circle = new ol.geom.Circle(
      ol.proj.transform([2.1833, 41.3833], 'EPSG:4326', 'EPSG:3857'),
      1000000
  );

  // Entidades
  var pointFeature = new ol.Feature(point);
  var circleFeature = new ol.Feature(circle);

  // Fuentes
  var vectorSource = new ol.source.Vector({
      projection: 'EPSG:4326'
  });
  vectorSource.addFeatures([pointFeature, circleFeature]);

  // Capas vectoriales
  var vectorLayer = new ol.layer.Vector({
    source: vectorSource
  });

  // Añadir capa vectorial al mapa
  map.addLayer(vectorLayer);

**Ej. 6:** Añadir entidades a mano

Dar estilo a las entidades
--------------------------------------------------------------------------------

Las entidades pertenecientes a capas vectoriales pueden tomar estilos.
El estilo está determinado por una combinación de relleno, grosor, texto e imagen, los cuales son todos opcionales. Además, un estilo se puede aplicar a una capa, lo que marcará el estilo de todas las entidades contenidas, o a una entidad individual. 

Un estilo se representa por la clase ``ol.style.Style`` que tiene propiedades para definir el relleno (``fill``),  grosor(``stroke``), texto (``text``) e imágen (``image``) a ser aplicadas. El siguiente ejemplo muestra los límites administrativos mundiales con un estilo que les da relleno verde y grosor.

.. image:: ../../images/screenshots/800x600/openlayers-styling.png
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

**Ej. 7:** Dando estilo a entidades

En el código, se ha cargado un archiv TopoJSON y se le ha asignado un estilo a través de la propiedad ``style``.
Se han definido un relleno(``fill``) y grosor (``stroke``), necesarios para línea y polígonos y una imagen (``image``) (en este caso un círculo) usado para las entidades puntuales.

Trabajar con eventos
--------------------------------------------------------------------------------

La mayoría de los componentes, como el mapa, capas o controles disparan eventos para notificar cambios. Por ejemplo, se puede notificar cada vez que el ratón se mueve sobre el mapa, cuando una entidad se añade a una capa vectorial, etc. 
Los Eventos s pueden registrar fácilmente en un objeto con el método ``on()`` y desregistrar con ``un()``.

El siguiente código registra un evento en una instancia de mapa, y se notifica cada vez que el puntero se mueve. Con la función de respuesta se obtienen las coordenadas del puntero y se escriben en la consola del navegador en dos proyecciones diferentes. 

.. code-block:: javascript

  map.on('pointermove', function(event) {
    var coord3857 = event.coordinate;
    var coord4326 = ol.proj.transform(coord3857, 'EPSG:3857', 'EPSG:4326');

    console.log(coord3857, coord4326);
  });

**Ej. 8:** Escribe la posición del puntero.

¿Qué más?
--------------------------------------------------------------------------------
A veces, la forma más rápida de averiguar cómo funciona Openlayers es mirar los ejemplos y su código fuente. Se puede encontrar más información sobre OpenLayers3 aquí:

* `API Docs <../../ol3/apidoc/>`_

* `Examples <../../ol3/examples/>`_

* Página web de `OpenLayers.org <http://openlayers.org/>`_